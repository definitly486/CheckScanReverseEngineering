package androidx.media3.exoplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaDataSource;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.FileDescriptorDataSource;
import androidx.media3.datasource.MediaDataSourceAdapter;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.UnrecognizedInputFormatException;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.bg;
import defpackage.l85;
import defpackage.mi2;
import defpackage.o8;
import defpackage.wb4;
import defpackage.yr4;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes3.dex */
public class MediaExtractorCompatInternal {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final String TAG = "MediaExtractorCompatInt";
    private DataSource currentDataSource;
    private Extractor currentExtractor;
    private ExtractorInput currentExtractorInput;
    private final DataSource.Factory dataSourceFactory;
    private final ExtractorsFactory extractorsFactory;
    private boolean hasBeenPrepared;
    private Map<String, String> httpRequestHeaders;
    private LogSessionId logSessionId;
    private long offsetInCurrentFile;
    private SeekPoint pendingSeek;
    private SeekMap seekMap;
    private boolean tracksEnded;
    private int upstreamFormatsCount;
    private final PositionHolder positionHolder = new PositionHolder();
    private final Allocator allocator = new DefaultAllocator(true, 65536);
    private final ArrayList<MediaExtractorTrack> tracks = new ArrayList<>();
    private final SparseArray<MediaExtractorSampleQueue> sampleQueues = new SparseArray<>();
    private final SampleMetadataQueue sampleMetadataQueue = new SampleMetadataQueue();
    private final FormatHolder formatHolder = new FormatHolder();
    private final DecoderInputBuffer sampleHolderWithBufferReplacementDisabled = DecoderInputBuffer.newNoDataInstance();
    private final DecoderInputBuffer sampleHolderWithBufferReplacementEnabled = new DecoderInputBuffer(2);
    private final Set<Integer> selectedTrackIndices = new HashSet();

    public final class ExtractorOutputImpl implements ExtractorOutput {
        private ExtractorOutputImpl() {
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void endTracks() {
            MediaExtractorCompatInternal.this.tracksEnded = true;
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
            MediaExtractorCompatInternal.this.seekMap = seekMap;
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            MediaExtractorSampleQueue mediaExtractorSampleQueue = (MediaExtractorSampleQueue) MediaExtractorCompatInternal.this.sampleQueues.get(i);
            if (mediaExtractorSampleQueue != null) {
                return mediaExtractorSampleQueue;
            }
            if (MediaExtractorCompatInternal.this.tracksEnded) {
                return new DiscardingTrackOutput();
            }
            MediaExtractorCompatInternal mediaExtractorCompatInternal = MediaExtractorCompatInternal.this;
            MediaExtractorSampleQueue mediaExtractorSampleQueue2 = mediaExtractorCompatInternal.new MediaExtractorSampleQueue(mediaExtractorCompatInternal.allocator, i);
            MediaExtractorCompatInternal.this.sampleQueues.put(i, mediaExtractorSampleQueue2);
            return mediaExtractorSampleQueue2;
        }
    }

    public final class MediaExtractorSampleQueue extends SampleQueue {
        private int compatibilityTrackIndex;
        private int mainTrackIndex;
        public long trackDurationUs;
        public final int trackId;

        public MediaExtractorSampleQueue(Allocator allocator, int i) {
            super(allocator, null, null);
            this.trackId = i;
            this.trackDurationUs = C.TIME_UNSET;
            this.mainTrackIndex = -1;
            this.compatibilityTrackIndex = -1;
        }

        private void queueSampleMetadata(long j, int i) {
            int i2 = ((1073741824 & i) != 0 ? 2 : 0) | ((i & 1) != 0 ? 1 : 0);
            if (this.compatibilityTrackIndex != -1) {
                MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(j, i2, this.compatibilityTrackIndex);
            }
            MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(j, i2, this.mainTrackIndex);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void durationUs(long j) {
            this.trackDurationUs = j;
            super.durationUs(j);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public Format getAdjustedUpstreamFormat(Format format) {
            if (getUpstreamFormat() == null) {
                MediaExtractorCompatInternal.this.onSampleQueueFormatInitialized(this, format);
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, androidx.media3.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
            int i4 = i & (-536870913);
            o8.r(this.mainTrackIndex != -1);
            int writeIndex = getWriteIndex();
            super.sampleMetadata(j, i4, i2, i3, cryptoData);
            if (getWriteIndex() == writeIndex + 1) {
                queueSampleMetadata(j, i4);
            }
        }

        public void setCompatibilityTrackIndex(int i) {
            this.compatibilityTrackIndex = i;
        }

        public void setMainTrackIndex(int i) {
            this.mainTrackIndex = i;
        }

        public String toString() {
            int i = this.trackId;
            int i2 = this.mainTrackIndex;
            int i3 = this.compatibilityTrackIndex;
            StringBuilder sbF = bg.f(i, i2, "trackId: ", ", mainTrackIndex: ", ", compatibilityTrackIndex: ");
            sbF.append(i3);
            return sbF.toString();
        }
    }

    public static final class MediaExtractorTrack {
        public final String compatibilityTrackMimeType;
        public final boolean isCompatibilityTrack;
        public final MediaExtractorSampleQueue sampleQueue;

        private MediaExtractorTrack(MediaExtractorSampleQueue mediaExtractorSampleQueue, boolean z, String str) {
            this.sampleQueue = mediaExtractorSampleQueue;
            this.isCompatibilityTrack = z;
            this.compatibilityTrackMimeType = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Format getFormat(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer) {
            formatHolder.clear();
            this.sampleQueue.read(formatHolder, decoderInputBuffer, 2, false);
            Format format = formatHolder.format;
            format.getClass();
            formatHolder.clear();
            return format;
        }

        public MediaFormat createDownstreamMediaFormat(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer) {
            Format format = getFormat(formatHolder, decoderInputBuffer);
            MediaFormat mediaFormatCreateMediaFormatFromFormat = MediaFormatUtil.createMediaFormatFromFormat(format);
            if (this.compatibilityTrackMimeType != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    mediaFormatCreateMediaFormatFromFormat.removeKey("codecs-string");
                }
                mediaFormatCreateMediaFormatFromFormat.setString("mime", this.compatibilityTrackMimeType);
            }
            Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
            if (codecProfileAndLevel != null) {
                mediaFormatCreateMediaFormatFromFormat.setInteger(Scopes.PROFILE, ((Integer) codecProfileAndLevel.first).intValue());
                mediaFormatCreateMediaFormatFromFormat.setInteger(FirebaseAnalytics.Param.LEVEL, ((Integer) codecProfileAndLevel.second).intValue());
            }
            return mediaFormatCreateMediaFormatFromFormat;
        }

        public void discardFrontSample() {
            this.sampleQueue.skip(1);
            this.sampleQueue.discardToRead();
        }

        public int getIdOfBackingTrack() {
            return this.sampleQueue.trackId;
        }

        public String toString() {
            return "MediaExtractorSampleQueue: " + this.sampleQueue + ", isCompatibilityTrack: " + this.isCompatibilityTrack + ", compatibilityTrackMimeType: " + this.compatibilityTrackMimeType;
        }
    }

    public static final class SampleMetadataQueue {
        private final ArrayDeque<SampleMetadata> sampleMetadataPool = new ArrayDeque<>();
        private final ArrayDeque<SampleMetadata> sampleMetadataQueue = new ArrayDeque<>();

        public static final class SampleMetadata {
            public int flags;
            public long timeUs;
            public int trackIndex;

            public SampleMetadata(long j, int i, int i2) {
                set(j, i, i2);
            }

            public void set(long j, int i, int i2) {
                this.timeUs = j;
                this.flags = i;
                this.trackIndex = i2;
            }
        }

        private SampleMetadata obtainSampleMetadata(long j, int i, int i2) {
            SampleMetadata sampleMetadata = this.sampleMetadataPool.isEmpty() ? new SampleMetadata(j, i, i2) : this.sampleMetadataPool.pop();
            sampleMetadata.set(j, i, i2);
            return sampleMetadata;
        }

        public void addLast(long j, int i, int i2) {
            this.sampleMetadataQueue.addLast(obtainSampleMetadata(j, i, i2));
        }

        public void clear() {
            Iterator<SampleMetadata> it = this.sampleMetadataQueue.iterator();
            while (it.hasNext()) {
                this.sampleMetadataPool.push(it.next());
            }
            this.sampleMetadataQueue.clear();
        }

        public boolean isEmpty() {
            return this.sampleMetadataQueue.isEmpty();
        }

        public SampleMetadata peekFirst() {
            return this.sampleMetadataQueue.peekFirst();
        }

        public SampleMetadata removeFirst() {
            SampleMetadata sampleMetadataRemoveFirst = this.sampleMetadataQueue.removeFirst();
            this.sampleMetadataPool.push(sampleMetadataRemoveFirst);
            return sampleMetadataRemoveFirst;
        }
    }

    public MediaExtractorCompatInternal(ExtractorsFactory extractorsFactory, DataSource.Factory factory) {
        this.extractorsFactory = extractorsFactory;
        this.dataSourceFactory = factory;
    }

    @EnsuresNonNullIf(expression = {"sampleMetadataQueue.peekFirst()"}, result = true)
    private boolean advanceToSampleOrEndOfInput() {
        try {
            maybeResolvePendingSeek();
            boolean z = false;
            while (true) {
                if (!this.sampleMetadataQueue.isEmpty()) {
                    Set<Integer> set = this.selectedTrackIndices;
                    SampleMetadataQueue.SampleMetadata sampleMetadataPeekFirst = this.sampleMetadataQueue.peekFirst();
                    sampleMetadataPeekFirst.getClass();
                    if (set.contains(Integer.valueOf(sampleMetadataPeekFirst.trackIndex))) {
                        return true;
                    }
                    skipOneSample();
                } else {
                    if (z) {
                        return false;
                    }
                    try {
                        Extractor extractor = this.currentExtractor;
                        extractor.getClass();
                        ExtractorInput extractorInput = this.currentExtractorInput;
                        extractorInput.getClass();
                        int i = extractor.read(extractorInput, this.positionHolder);
                        if (i == -1) {
                            z = true;
                        } else if (i == 1) {
                            this.currentExtractorInput = reopenCurrentDataSource(this.positionHolder.position);
                        }
                    } catch (Exception | OutOfMemoryError e) {
                        Log.w(TAG, "Treating exception as the end of input.", e);
                    }
                }
            }
        } catch (IOException e2) {
            Log.w(TAG, "Treating exception as the end of input.", e2);
            return false;
        }
    }

    private DataSpec buildDataSpec(Uri uri, long j) {
        DataSpec.Builder flags = new DataSpec.Builder().setUri(uri).setPosition(j).setFlags(6);
        Map<String, String> map = this.httpRequestHeaders;
        if (map != null) {
            flags.setHttpRequestHeaders(map);
        }
        return flags.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$selectExtractor$0(Extractor extractor) {
        return extractor.getUnderlyingImplementation().getClass().getSimpleName();
    }

    private void maybeResolvePendingSeek() {
        SeekPoint seekPoint = this.pendingSeek;
        if (seekPoint == null) {
            return;
        }
        seekPoint.getClass();
        Extractor extractor = this.currentExtractor;
        extractor.getClass();
        extractor.seek(seekPoint.position, seekPoint.timeUs);
        this.currentExtractorInput = reopenCurrentDataSource(seekPoint.position);
        this.pendingSeek = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onSampleQueueFormatInitialized(MediaExtractorSampleQueue mediaExtractorSampleQueue, Format format) {
        boolean z = true;
        this.upstreamFormatsCount++;
        mediaExtractorSampleQueue.setMainTrackIndex(this.tracks.size());
        Object[] objArr = 0;
        this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, false, null));
        String alternativeCodecMimeType = MediaCodecUtil.getAlternativeCodecMimeType(format);
        if (alternativeCodecMimeType != null) {
            mediaExtractorSampleQueue.setCompatibilityTrackIndex(this.tracks.size());
            this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, z, alternativeCodecMimeType));
        }
    }

    private void peekNextSelectedTrackSample(DecoderInputBuffer decoderInputBuffer) {
        ArrayList<MediaExtractorTrack> arrayList = this.tracks;
        SampleMetadataQueue.SampleMetadata sampleMetadataPeekFirst = this.sampleMetadataQueue.peekFirst();
        sampleMetadataPeekFirst.getClass();
        MediaExtractorSampleQueue mediaExtractorSampleQueue = arrayList.get(sampleMetadataPeekFirst.trackIndex).sampleQueue;
        int i = mediaExtractorSampleQueue.read(this.formatHolder, decoderInputBuffer, 1, false);
        if (i == -5) {
            i = mediaExtractorSampleQueue.read(this.formatHolder, decoderInputBuffer, 1, false);
        }
        this.formatHolder.clear();
        o8.r(i == -4);
    }

    private void populatePlatformCryptoInfoParameters(MediaCodec.CryptoInfo cryptoInfo) {
        CryptoInfo cryptoInfo2 = this.sampleHolderWithBufferReplacementEnabled.cryptoInfo;
        cryptoInfo2.getClass();
        MediaCodec.CryptoInfo frameworkCryptoInfo = cryptoInfo2.getFrameworkCryptoInfo();
        cryptoInfo.numSubSamples = frameworkCryptoInfo.numSubSamples;
        cryptoInfo.numBytesOfClearData = frameworkCryptoInfo.numBytesOfClearData;
        cryptoInfo.numBytesOfEncryptedData = frameworkCryptoInfo.numBytesOfEncryptedData;
        cryptoInfo.key = frameworkCryptoInfo.key;
        cryptoInfo.iv = frameworkCryptoInfo.iv;
        cryptoInfo.mode = frameworkCryptoInfo.mode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void prepareDataSource(DataSource dataSource, DataSpec dataSpec) throws ParserException {
        int i;
        o8.r(!this.hasBeenPrepared);
        this.hasBeenPrepared = true;
        this.offsetInCurrentFile = dataSpec.position;
        this.currentDataSource = dataSource;
        ExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.currentDataSource, 0L, dataSource.open(dataSpec));
        Extractor extractorSelectExtractor = selectExtractor(defaultExtractorInput);
        Throwable e = null;
        extractorSelectExtractor.init(new ExtractorOutputImpl());
        boolean z = true;
        while (z) {
            try {
                i = extractorSelectExtractor.read(defaultExtractorInput, this.positionHolder);
            } catch (Exception | OutOfMemoryError e2) {
                e = e2;
                i = -1;
            }
            boolean z2 = !this.tracksEnded || this.upstreamFormatsCount < this.sampleQueues.size() || this.seekMap == null;
            if (e != null || (z2 && i == -1)) {
                release();
                throw ParserException.createForMalformedContainer(e != null ? "Exception encountered while parsing input media." : "Reached end of input before preparation completed.", e);
            }
            if (i == 1) {
                defaultExtractorInput = reopenCurrentDataSource(this.positionHolder.position);
            }
            z = z2;
        }
        this.currentExtractorInput = defaultExtractorInput;
        this.currentExtractor = extractorSelectExtractor;
    }

    private ExtractorInput reopenCurrentDataSource(long j) {
        DataSource dataSource = this.currentDataSource;
        dataSource.getClass();
        Uri uri = dataSource.getUri();
        uri.getClass();
        DataSourceUtil.closeQuietly(dataSource);
        long jOpen = dataSource.open(buildDataSpec(uri, this.offsetInCurrentFile + j));
        if (jOpen != -1) {
            jOpen += j;
        }
        return new DefaultExtractorInput(dataSource, j, jOpen);
    }

    private Extractor selectExtractor(ExtractorInput extractorInput) throws UnrecognizedInputFormatException {
        Extractor extractor;
        Extractor[] extractorArrCreateExtractors = this.extractorsFactory.createExtractors();
        int length = extractorArrCreateExtractors.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                extractor = null;
                break;
            }
            extractor = extractorArrCreateExtractors[i];
            try {
                if (extractor.sniff(extractorInput)) {
                    extractorInput.resetPeekPosition();
                    break;
                }
            } catch (EOFException unused) {
            } catch (Throwable th) {
                extractorInput.resetPeekPosition();
                throw th;
            }
            extractorInput.resetPeekPosition();
            i++;
        }
        if (extractor != null) {
            return extractor;
        }
        String str = "None of the available extractors (" + new wb4(", ").b(yr4.c(com.google.common.collect.j.p(extractorArrCreateExtractors), new l85())) + ") could read the stream.";
        DataSource dataSource = this.currentDataSource;
        dataSource.getClass();
        Uri uri = dataSource.getUri();
        uri.getClass();
        throw new UnrecognizedInputFormatException(str, uri, com.google.common.collect.w.f);
    }

    private void skipOneSample() {
        MediaExtractorTrack mediaExtractorTrack = this.tracks.get(this.sampleMetadataQueue.removeFirst().trackIndex);
        if (mediaExtractorTrack.isCompatibilityTrack) {
            return;
        }
        mediaExtractorTrack.discardFrontSample();
    }

    public boolean advance() {
        if (!advanceToSampleOrEndOfInput()) {
            return false;
        }
        skipOneSample();
        return advanceToSampleOrEndOfInput();
    }

    public Allocator getAllocator() {
        return this.allocator;
    }

    public long getCachedDuration() {
        if (!advanceToSampleOrEndOfInput()) {
            return 0L;
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MIN_VALUE;
        for (int i = 0; i < this.tracks.size(); i++) {
            MediaExtractorSampleQueue mediaExtractorSampleQueue = this.tracks.get(i).sampleQueue;
            jMax2 = Math.max(jMax2, mediaExtractorSampleQueue.getLargestReadTimestampUs());
            jMax = Math.max(jMax, mediaExtractorSampleQueue.getLargestQueuedTimestampUs());
        }
        o8.r(jMax != Long.MIN_VALUE);
        if (jMax2 == jMax) {
            return 0L;
        }
        return (jMax - (jMax2 != Long.MIN_VALUE ? jMax2 : 0L)) + 10000;
    }

    public DrmInitData getDrmInitData() {
        for (int i = 0; i < this.tracks.size(); i++) {
            DrmInitData drmInitData = this.tracks.get(i).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled).drmInitData;
            if (drmInitData != null) {
                return drmInitData;
            }
        }
        return null;
    }

    public LogSessionId getLogSessionId() {
        LogSessionId logSessionId = this.logSessionId;
        return logSessionId != null ? logSessionId : LogSessionId.LOG_SESSION_ID_NONE;
    }

    public PersistableBundle getMetrics() {
        String str;
        PersistableBundle persistableBundle = new PersistableBundle();
        Extractor extractor = this.currentExtractor;
        if (extractor != null) {
            persistableBundle.putString("android.media.mediaextractor.fmt", extractor.getUnderlyingImplementation().getClass().getSimpleName());
        }
        if (!this.tracks.isEmpty() && (str = this.tracks.get(0).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled).containerMimeType) != null) {
            persistableBundle.putString("android.media.mediaextractor.mime", str);
        }
        persistableBundle.putInt("android.media.mediaextractor.ntrk", this.tracks.size());
        return persistableBundle;
    }

    public Map<UUID, byte[]> getPsshInfo() {
        PsshAtomUtil.PsshAtom psshAtom;
        DrmInitData drmInitData = getDrmInitData();
        if (drmInitData == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            byte[] bArr = drmInitData.get(i).data;
            if (bArr != null && (psshAtom = PsshAtomUtil.parsePsshAtom(bArr)) != null) {
                map.put(psshAtom.uuid, psshAtom.schemeData);
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        if (!advanceToSampleOrEndOfInput() || (this.sampleMetadataQueue.peekFirst().flags & 2) == 0) {
            return false;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        populatePlatformCryptoInfoParameters(cryptoInfo);
        return true;
    }

    public int getSampleFlags() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().flags;
        }
        return -1;
    }

    public long getSampleSize() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1L;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        ByteBuffer byteBuffer = this.sampleHolderWithBufferReplacementEnabled.data;
        byteBuffer.getClass();
        int iPosition = byteBuffer.position();
        byteBuffer.position(0);
        return iPosition;
    }

    public long getSampleTime() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().timeUs;
        }
        return -1L;
    }

    public int getSampleTrackIndex() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().trackIndex;
        }
        return -1;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public MediaFormat getTrackFormat(int i) {
        MediaExtractorTrack mediaExtractorTrack = this.tracks.get(i);
        MediaFormat mediaFormatCreateDownstreamMediaFormat = mediaExtractorTrack.createDownstreamMediaFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled);
        long j = mediaExtractorTrack.sampleQueue.trackDurationUs;
        if (j != C.TIME_UNSET) {
            mediaFormatCreateDownstreamMediaFormat.setLong("durationUs", j);
            return mediaFormatCreateDownstreamMediaFormat;
        }
        SeekMap seekMap = this.seekMap;
        if (seekMap != null && seekMap.getDurationUs() != C.TIME_UNSET) {
            mediaFormatCreateDownstreamMediaFormat.setLong("durationUs", this.seekMap.getDurationUs());
        }
        return mediaFormatCreateDownstreamMediaFormat;
    }

    public boolean hasCacheReachedEndOfStream() {
        return getCachedDuration() == 0;
    }

    public int readSampleData(ByteBuffer byteBuffer, int i) {
        if (!advanceToSampleOrEndOfInput()) {
            return -1;
        }
        byteBuffer.position(i);
        byteBuffer.limit(byteBuffer.capacity());
        DecoderInputBuffer decoderInputBuffer = this.sampleHolderWithBufferReplacementDisabled;
        decoderInputBuffer.data = byteBuffer;
        peekNextSelectedTrackSample(decoderInputBuffer);
        byteBuffer.flip();
        byteBuffer.position(i);
        this.sampleHolderWithBufferReplacementDisabled.data = null;
        return byteBuffer.remaining();
    }

    public void release() {
        SparseArray<MediaExtractorSampleQueue> sparseArray;
        int i = 0;
        while (true) {
            int size = this.sampleQueues.size();
            sparseArray = this.sampleQueues;
            if (i >= size) {
                break;
            }
            sparseArray.valueAt(i).release();
            i++;
        }
        sparseArray.clear();
        Extractor extractor = this.currentExtractor;
        if (extractor != null) {
            extractor.release();
            this.currentExtractor = null;
        }
        this.currentExtractorInput = null;
        this.pendingSeek = null;
        DataSourceUtil.closeQuietly(this.currentDataSource);
        this.currentDataSource = null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042  */
    public void seekTo(long j, int i) {
        SeekMap.SeekPoints seekPoints;
        SeekPoint seekPoint;
        if (this.seekMap == null) {
            return;
        }
        if (this.selectedTrackIndices.size() == 1) {
            SeekMap seekMap = this.seekMap;
            if (seekMap instanceof TrackAwareSeekMap) {
                TrackAwareSeekMap trackAwareSeekMap = (TrackAwareSeekMap) seekMap;
                int idOfBackingTrack = this.tracks.get(this.selectedTrackIndices.iterator().next().intValue()).getIdOfBackingTrack();
                seekPoints = trackAwareSeekMap.isSeekable(idOfBackingTrack) ? trackAwareSeekMap.getSeekPoints(j, idOfBackingTrack) : trackAwareSeekMap.getSeekPoints(j);
            } else {
                seekPoints = this.seekMap.getSeekPoints(j);
            }
        } else {
            seekPoints = this.seekMap.getSeekPoints(j);
        }
        if (i == 0) {
            seekPoint = seekPoints.first;
        } else if (i == 1) {
            seekPoint = seekPoints.second;
        } else {
            if (i != 2) {
                mi2.b();
                return;
            }
            seekPoint = Math.abs(j - seekPoints.second.timeUs) < Math.abs(j - seekPoints.first.timeUs) ? seekPoints.second : seekPoints.first;
        }
        this.sampleMetadataQueue.clear();
        for (int i2 = 0; i2 < this.sampleQueues.size(); i2++) {
            this.sampleQueues.valueAt(i2).reset();
        }
        this.pendingSeek = seekPoint;
    }

    public void selectTrack(int i) {
        this.selectedTrackIndices.add(Integer.valueOf(i));
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws ParserException {
        if (Util.isLocalFileUri(uri)) {
            String path = uri.getPath();
            path.getClass();
            setDataSource(path);
            return;
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                }
                setDataSource(uri.toString(), map);
                return;
            }
            try {
                setDataSource(assetFileDescriptorOpenAssetFileDescriptor);
                assetFileDescriptorOpenAssetFileDescriptor.close();
            } catch (Throwable th) {
                try {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException | SecurityException unused) {
        }
    }

    public void setLogSessionId(LogSessionId logSessionId) {
        if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        this.logSessionId = logSessionId;
    }

    public void unselectTrack(int i) {
        this.selectedTrackIndices.remove(Integer.valueOf(i));
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) throws ParserException {
        if (assetFileDescriptor.getDeclaredLength() == -1) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws ParserException {
        setDataSource(fileDescriptor, 0L, -1L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws ParserException {
        prepareDataSource(new FileDescriptorDataSource(fileDescriptor, j, j2), buildDataSpec(Uri.EMPTY, 0L));
    }

    public void setDataSource(Uri uri, long j) throws ParserException {
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(uri, j));
    }

    public void setDataSource(String str) throws ParserException {
        setDataSource(str, (Map<String, String>) null);
    }

    public void setDataSource(String str, Map<String, String> map) throws ParserException {
        this.httpRequestHeaders = map;
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(Uri.parse(str), 0L));
    }

    public void setDataSource(MediaDataSource mediaDataSource) throws ParserException {
        prepareDataSource(new MediaDataSourceAdapter(mediaDataSource, false), buildDataSpec(Uri.EMPTY, 0L));
    }
}
