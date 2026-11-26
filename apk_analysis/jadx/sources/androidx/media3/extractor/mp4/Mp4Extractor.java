package androidx.media3.extractor.mp4;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.af5;
import defpackage.ln;
import defpackage.o8;
import defpackage.ud;
import defpackage.we5;
import defpackage.xe5;
import defpackage.ye5;
import defpackage.ze5;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Mp4Extractor implements Extractor {

    @Deprecated
    public static final ExtractorsFactory FACTORY = new ze5();
    private static final int FILE_TYPE_HEIC = 2;
    private static final int FILE_TYPE_MP4 = 0;
    private static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_EMIT_RAW_SUBTITLE_DATA = 16;
    public static final int FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE = 8;
    public static final int FLAG_OMIT_TRACK_SAMPLE_TABLE = 256;
    public static final int FLAG_READ_AUXILIARY_TRACKS = 64;

    @Deprecated
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES = 32;
    public static final int FLAG_READ_WITHIN_GOP_SAMPLE_DEPENDENCIES_H265 = 128;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL = 10000000;
    private static final int MAX_SYNC_SAMPLES_TO_SCAN_FOR_THUMBNAIL = 20;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int STATE_READING_SEF = 3;
    private long[][] accumulatedSampleSizes;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private long axteAtomOffset;
    private final ArrayDeque<Mp4Box.ContainerBox> containerAtoms;
    private ExtractorOutput extractorOutput;
    private int fileType;
    private final int flags;
    private boolean isSampleDependedOn;
    private j<SniffFailure> lastSniffFailures;
    private boolean moovAtomProcessed;
    private MotionPhotoMetadata motionPhotoMetadata;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private final boolean omitTrackSampleTable;
    private int parserState;
    private boolean readingAuxiliaryTracks;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private long sampleOffsetForAuxiliaryTracks;
    private int sampleTrackIndex;
    private final ParsableByteArray scratch;
    private boolean seekToAxteAtom;
    private boolean seenFtypAtom;
    private final SefReader sefReader;
    private final List<Metadata.Entry> slowMotionMetadataEntries;
    private final SubtitleParser.Factory subtitleParserFactory;
    private Mp4Track[] tracks;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class Mp4SeekMap implements TrackAwareSeekMap {
        private final long durationUs;
        private final int firstVideoTrackIndex;
        private final Mp4Track[] tracks;

        public Mp4SeekMap(long j, Mp4Track[] mp4TrackArr, int i) {
            this.durationUs = j;
            this.tracks = mp4TrackArr;
            this.firstVideoTrackIndex = i;
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0062  */
        /* JADX WARN: Code duplicated, block: B:30:0x0068  */
        /* JADX WARN: Code duplicated, block: B:32:0x006c  */
        /* JADX WARN: Code duplicated, block: B:34:0x0078  */
        /* JADX WARN: Code duplicated, block: B:39:0x0089  */
        /* JADX WARN: Code duplicated, block: B:41:0x008f  */
        /* JADX WARN: Code duplicated, block: B:43:0x0080 A[EDGE_INSN: B:43:0x0080->B:37:0x0080 BREAK  A[LOOP:0: B:28:0x0063->B:36:0x007d], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:0x007d A[SYNTHETIC] */
        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public SeekMap.SeekPoints getSeekPoints(long j, int i) {
            long j2;
            long j3;
            long jMaybeAdjustSeekOffset;
            long j4;
            int i2;
            Mp4Track[] mp4TrackArr;
            TrackSampleTable trackSampleTable;
            int indexOfLaterOrEqualSynchronizationSample;
            Mp4Track[] mp4TrackArr2 = this.tracks;
            if (mp4TrackArr2.length == 0) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            int i3 = i != -1 ? i : this.firstVideoTrackIndex;
            if (i3 != -1) {
                TrackSampleTable trackSampleTable2 = mp4TrackArr2[i3].sampleTable;
                int synchronizationSampleIndex = Mp4Extractor.getSynchronizationSampleIndex(trackSampleTable2, j);
                if (synchronizationSampleIndex == -1) {
                    return new SeekMap.SeekPoints(SeekPoint.START);
                }
                j3 = trackSampleTable2.timestampsUs[synchronizationSampleIndex];
                j2 = trackSampleTable2.offsets[synchronizationSampleIndex];
                if (j3 < j && synchronizationSampleIndex < trackSampleTable2.sampleCount - 1 && (indexOfLaterOrEqualSynchronizationSample = trackSampleTable2.getIndexOfLaterOrEqualSynchronizationSample(j)) != -1 && indexOfLaterOrEqualSynchronizationSample != synchronizationSampleIndex) {
                    j4 = trackSampleTable2.timestampsUs[indexOfLaterOrEqualSynchronizationSample];
                    jMaybeAdjustSeekOffset = trackSampleTable2.offsets[indexOfLaterOrEqualSynchronizationSample];
                }
                if (i == -1) {
                    i2 = 0;
                    while (true) {
                        mp4TrackArr = this.tracks;
                        if (i2 < mp4TrackArr.length) {
                            break;
                        }
                        if (i2 != this.firstVideoTrackIndex) {
                            trackSampleTable = mp4TrackArr[i2].sampleTable;
                            long jMaybeAdjustSeekOffset2 = Mp4Extractor.maybeAdjustSeekOffset(trackSampleTable, j3, j2);
                            if (j4 != C.TIME_UNSET) {
                                jMaybeAdjustSeekOffset = Mp4Extractor.maybeAdjustSeekOffset(trackSampleTable, j4, jMaybeAdjustSeekOffset);
                            }
                            j2 = jMaybeAdjustSeekOffset2;
                        }
                        i2++;
                    }
                }
                SeekPoint seekPoint = new SeekPoint(j3, j2);
                return j4 == C.TIME_UNSET ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j4, jMaybeAdjustSeekOffset));
            }
            j2 = Long.MAX_VALUE;
            j3 = j;
            jMaybeAdjustSeekOffset = -1;
            j4 = -9223372036854775807L;
            if (i == -1) {
                i2 = 0;
                while (true) {
                    mp4TrackArr = this.tracks;
                    if (i2 < mp4TrackArr.length) {
                        break;
                        break;
                    }
                    if (i2 != this.firstVideoTrackIndex) {
                        trackSampleTable = mp4TrackArr[i2].sampleTable;
                        long jMaybeAdjustSeekOffset3 = Mp4Extractor.maybeAdjustSeekOffset(trackSampleTable, j3, j2);
                        if (j4 != C.TIME_UNSET) {
                            jMaybeAdjustSeekOffset = Mp4Extractor.maybeAdjustSeekOffset(trackSampleTable, j4, jMaybeAdjustSeekOffset);
                        }
                        j2 = jMaybeAdjustSeekOffset3;
                    }
                    i2++;
                }
            }
            SeekPoint seekPoint2 = new SeekPoint(j3, j2);
            if (j4 == C.TIME_UNSET) {
            }
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        @Override // androidx.media3.extractor.TrackAwareSeekMap
        public boolean isSeekable(int i) {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            return getSeekPoints(j, -1);
        }
    }

    public static final class Mp4Track {
        public Format pendingFormat;
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;
        public final TrueHdSampleRechunker trueHdSampleRechunker;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
            this.trueHdSampleRechunker = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? new TrueHdSampleRechunker() : null;
        }
    }

    public Mp4Extractor(SubtitleParser.Factory factory, int i) {
        this.subtitleParserFactory = factory;
        this.flags = i;
        this.omitTrackSampleTable = (i & 256) != 0;
        j.b bVar = j.c;
        this.lastSniffFailures = w.f;
        this.parserState = (i & 4) != 0 ? 3 : 0;
        this.sefReader = new SefReader();
        this.slowMotionMetadataEntries = new ArrayList();
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(6);
        this.scratch = new ParsableByteArray();
        this.sampleTrackIndex = -1;
        this.extractorOutput = ExtractorOutput.PLACEHOLDER;
        this.tracks = new Mp4Track[0];
    }

    private static int brandToFileType(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] calculateAccumulatedSampleSizes(Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i = 0; i < mp4TrackArr.length; i++) {
            jArr[i] = new long[mp4TrackArr[i].sampleTable.sampleCount];
            jArr2[i] = mp4TrackArr[i].sampleTable.timestampsUs[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < mp4TrackArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < mp4TrackArr.length; i4++) {
                if (!zArr[i4]) {
                    long j3 = jArr2[i4];
                    if (j3 <= j2) {
                        i3 = i4;
                        j2 = j3;
                    }
                }
            }
            int i5 = iArr[i3];
            long[] jArr3 = jArr[i3];
            jArr3[i5] = j;
            TrackSampleTable trackSampleTable = mp4TrackArr[i3].sampleTable;
            j += (long) trackSampleTable.sizes[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr3.length) {
                jArr2[i3] = trackSampleTable.timestampsUs[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    private boolean canReadWithinGopSampleDependencies(Format format) {
        if (Objects.equals(format.sampleMimeType, "video/avc")) {
            return (this.flags & 32) != 0;
        }
        return Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265) && (this.flags & 128) != 0;
    }

    public static int codecsToParseWithinGopSampleDependenciesAsFlags(int i) {
        int i2 = (i & 1) != 0 ? 32 : 0;
        return (i & 2) != 0 ? i2 | 128 : i2;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private static long findBestThumbnailPresentationTimeUs(TrackSampleTable trackSampleTable, long j) {
        int i;
        if (!MimeTypes.isVideo(trackSampleTable.track.format.sampleMimeType)) {
            return C.TIME_UNSET;
        }
        int iMin = Math.min(trackSampleTable.hasOnlySyncSamples ? trackSampleTable.sampleCount : trackSampleTable.syncSampleIndices.length, 20);
        o8.r(j != C.TIME_UNSET);
        long jMin = Math.min(j, MAX_DURATION_US_TO_SCAN_FOR_THUMBNAIL);
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < iMin; i4++) {
            int i5 = trackSampleTable.hasOnlySyncSamples ? i4 : trackSampleTable.syncSampleIndices[i4];
            long j2 = trackSampleTable.timestampsUs[i5];
            if (j2 > jMin) {
                break;
            }
            if (j2 >= 0 && (i = trackSampleTable.sizes[i5]) > i3) {
                i2 = i5;
                i3 = i;
            }
        }
        return i2 == -1 ? C.TIME_UNSET : trackSampleTable.timestampsUs[i2];
    }

    private List<Integer> getAuxiliaryTrackTypesForAuxiliaryTracks(Metadata metadata) {
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) metadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new af5());
        mdtaMetadataEntry.getClass();
        List<Integer> auxiliaryTrackTypesFromMap = mdtaMetadataEntry.getAuxiliaryTrackTypesFromMap();
        ArrayList arrayList = new ArrayList(auxiliaryTrackTypesFromMap.size());
        for (int i = 0; i < auxiliaryTrackTypesFromMap.size(); i++) {
            int iIntValue = auxiliaryTrackTypesFromMap.get(i).intValue();
            int i2 = 1;
            if (iIntValue != 0) {
                if (iIntValue != 1) {
                    i2 = 3;
                    if (iIntValue != 2) {
                        i2 = iIntValue != 3 ? 0 : 4;
                    }
                } else {
                    i2 = 2;
                }
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSynchronizationSampleIndex(TrackSampleTable trackSampleTable, long j) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
        return indexOfEarlierOrEqualSynchronizationSample == -1 ? trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j) : indexOfEarlierOrEqualSynchronizationSample;
    }

    private int getTrackIndexOfNextReadSample(long j) {
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        while (true) {
            Mp4Track[] mp4TrackArr = this.tracks;
            if (i3 >= mp4TrackArr.length) {
                break;
            }
            Mp4Track mp4Track = mp4TrackArr[i3];
            int i4 = mp4Track.sampleIndex;
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i4 != trackSampleTable.sampleCount) {
                long j5 = trackSampleTable.offsets[i4];
                long[][] jArr = this.accumulatedSampleSizes;
                jArr.getClass();
                long j6 = jArr[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= RELOAD_MINIMUM_SEEK_DISTANCE;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    z2 = z3;
                    j3 = j6;
                    i2 = i3;
                    j4 = j7;
                }
                if (j6 < j2) {
                    z = z3;
                    j2 = j6;
                    i = i3;
                }
            }
            i3++;
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i2 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getAuxiliaryTrackTypesForAuxiliaryTracks$5(MdtaMetadataEntry mdtaMetadataEntry) {
        return mdtaMetadataEntry.key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$maybeSetDefaultSampleOffsetForAuxiliaryTracks$4(MdtaMetadataEntry mdtaMetadataEntry) {
        return mdtaMetadataEntry.key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_INTERLEAVED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] lambda$newFactory$0(SubtitleParser.Factory factory) {
        return new Extractor[]{new Mp4Extractor(factory)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Track lambda$processMoovAtom$2(Track track) {
        return track;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$shouldSeekToAxteAtom$3(MdtaMetadataEntry mdtaMetadataEntry) {
        return mdtaMetadataEntry.key.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] lambda$static$1() {
        return new Extractor[]{new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 16)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long maybeAdjustSeekOffset(TrackSampleTable trackSampleTable, long j, long j2) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j);
        return synchronizationSampleIndex == -1 ? j2 : Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j2);
    }

    private void maybeSetDefaultSampleOffsetForAuxiliaryTracks(Metadata metadata) {
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) metadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new we5());
        if (mdtaMetadataEntry == null || mdtaMetadataEntry.value[0] != 0) {
            return;
        }
        this.sampleOffsetForAuxiliaryTracks = this.axteAtomOffset + 16;
    }

    private void maybeSkipRemainingMetaAtomHeaderBytes(ExtractorInput extractorInput) {
        this.scratch.reset(8);
        extractorInput.peekFully(this.scratch.getData(), 0, 8);
        BoxParser.maybeSkipRemainingMetaBoxHeaderBytes(this.scratch);
        extractorInput.skipFully(this.scratch.getPosition());
        extractorInput.resetPeekPosition();
    }

    public static ExtractorsFactory newFactory(final SubtitleParser.Factory factory) {
        return new ExtractorsFactory() { // from class: ve5
            @Override // androidx.media3.extractor.ExtractorsFactory
            public final Extractor[] createExtractors() {
                return Mp4Extractor.lambda$newFactory$0(factory);
            }
        };
    }

    private void processAtomEnded(long j) {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            Mp4Box.ContainerBox containerBoxPop = this.containerAtoms.pop();
            if (containerBoxPop.type == 1836019574) {
                processMoovAtom(containerBoxPop);
                this.containerAtoms.clear();
                this.moovAtomProcessed = true;
                if (!this.seekToAxteAtom && !this.omitTrackSampleTable) {
                    this.parserState = 2;
                }
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerBoxPop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    private void processEndOfStreamReadingAtomHeader() {
        if (this.fileType != 2 || (this.flags & 2) == 0) {
            return;
        }
        TrackOutput trackOutputTrack = this.extractorOutput.track(0, 4);
        MotionPhotoMetadata motionPhotoMetadata = this.motionPhotoMetadata;
        trackOutputTrack.format(new Format.Builder().setMetadata(motionPhotoMetadata == null ? null : new Metadata(motionPhotoMetadata)).build());
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
    }

    private static int processFtypAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int iBrandToFileType = brandToFileType(parsableByteArray.readInt());
        if (iBrandToFileType != 0) {
            return iBrandToFileType;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            int iBrandToFileType2 = brandToFileType(parsableByteArray.readInt());
            if (iBrandToFileType2 != 0) {
                return iBrandToFileType2;
            }
        }
        return 0;
    }

    private void processMoovAtom(Mp4Box.ContainerBox containerBox) {
        List<Integer> list;
        Metadata metadata;
        Metadata udta;
        int i;
        Metadata metadata2;
        Metadata metadata3;
        String str;
        ArrayList arrayList;
        Mp4Box.ContainerBox containerBoxOfType = containerBox.getContainerBoxOfType(Mp4Box.TYPE_meta);
        List<Integer> arrayList2 = new ArrayList<>();
        if (containerBoxOfType != null) {
            Metadata mdtaFromMeta = BoxParser.parseMdtaFromMeta(containerBoxOfType);
            if (this.readingAuxiliaryTracks) {
                mdtaFromMeta.getClass();
                maybeSetDefaultSampleOffsetForAuxiliaryTracks(mdtaFromMeta);
                arrayList2 = getAuxiliaryTrackTypesForAuxiliaryTracks(mdtaFromMeta);
            } else if (shouldSeekToAxteAtom(mdtaFromMeta)) {
                this.seekToAxteAtom = true;
                return;
            }
            metadata = mdtaFromMeta;
            list = arrayList2;
        } else {
            list = arrayList2;
            metadata = null;
        }
        ArrayList arrayList3 = new ArrayList();
        boolean z = this.fileType == 1;
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_udta);
        if (leafBoxOfType != null) {
            udta = BoxParser.parseUdta(leafBoxOfType);
            gaplessInfoHolder.setFromMetadata(udta);
        } else {
            udta = null;
        }
        Mp4Box.LeafBox leafBoxOfType2 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_mvhd);
        leafBoxOfType2.getClass();
        Metadata metadata4 = new Metadata(BoxParser.parseMvhd(leafBoxOfType2.data));
        Metadata metadata5 = udta;
        List<TrackSampleTable> traks = BoxParser.parseTraks(containerBox, gaplessInfoHolder, C.TIME_UNSET, null, (this.flags & 1) != 0, z, new xe5(), this.omitTrackSampleTable);
        if (this.readingAuxiliaryTracks) {
            boolean z2 = list.size() == traks.size();
            Locale locale = Locale.US;
            o8.s(z2, ln.c(list.size(), traks.size(), "The number of auxiliary track types from metadata (", ") is not same as the number of auxiliary tracks (", ")"));
        }
        String containerMimeType = MimeTypeResolver.getContainerMimeType(traks);
        int i2 = 0;
        int i3 = 0;
        long j = C.TIME_UNSET;
        int size = -1;
        while (i2 < traks.size()) {
            TrackSampleTable trackSampleTable = traks.get(i2);
            if (trackSampleTable.sampleCount == 0) {
                i = i3;
                metadata2 = metadata5;
                metadata3 = metadata;
                str = containerMimeType;
                arrayList = arrayList3;
            } else {
                Track track = trackSampleTable.track;
                ArrayList arrayList4 = arrayList3;
                i = i3 + 1;
                String str2 = containerMimeType;
                Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i3, track.type));
                metadata2 = metadata5;
                Metadata metadata6 = metadata;
                long j2 = track.durationUs;
                if (j2 == C.TIME_UNSET) {
                    j2 = trackSampleTable.durationUs;
                }
                mp4Track.trackOutput.durationUs(j2);
                long jMax = Math.max(j, j2);
                boolean zEquals = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType);
                int i4 = trackSampleTable.maximumSize;
                int i5 = zEquals ? i4 * 16 : i4 + 30;
                Format.Builder builderBuildUpon = track.format.buildUpon();
                builderBuildUpon.setMaxInputSize(i5);
                if (track.type == 2) {
                    int i6 = track.format.roleFlags;
                    if ((this.flags & 8) != 0) {
                        i6 |= size == -1 ? 1 : 2;
                    }
                    if (this.readingAuxiliaryTracks) {
                        i6 |= 32768;
                        builderBuildUpon.setAuxiliaryTrackType(list.get(i2).intValue());
                    }
                    builderBuildUpon.setRoleFlags(i6);
                }
                long jFindBestThumbnailPresentationTimeUs = findBestThumbnailPresentationTimeUs(trackSampleTable, j2);
                Metadata metadata7 = jFindBestThumbnailPresentationTimeUs != C.TIME_UNSET ? new Metadata(new ThumbnailMetadata(jFindBestThumbnailPresentationTimeUs)) : null;
                MetadataUtil.setFormatGaplessInfo(track.type, gaplessInfoHolder, builderBuildUpon);
                metadata3 = metadata6;
                MetadataUtil.setFormatMetadata(track.type, metadata3, builderBuildUpon, track.format.metadata, this.slowMotionMetadataEntries.isEmpty() ? null : new Metadata(this.slowMotionMetadataEntries), metadata2, metadata4, metadata7);
                str = str2;
                builderBuildUpon.setContainerMimeType(str);
                if (Objects.equals(track.format.sampleMimeType, MimeTypes.AUDIO_MPEG)) {
                    mp4Track.pendingFormat = builderBuildUpon.build();
                } else {
                    mp4Track.trackOutput.format(builderBuildUpon.build());
                }
                if (track.type == 2 && size == -1) {
                    size = arrayList4.size();
                }
                arrayList = arrayList4;
                arrayList.add(mp4Track);
                j = jMax;
            }
            i2++;
            arrayList3 = arrayList;
            metadata = metadata3;
            containerMimeType = str;
            traks = traks;
            metadata5 = metadata2;
            i3 = i;
        }
        Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList3.toArray(new Mp4Track[0]);
        this.tracks = mp4TrackArr;
        this.accumulatedSampleSizes = !this.omitTrackSampleTable ? calculateAccumulatedSampleSizes(mp4TrackArr) : null;
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new Mp4SeekMap(j, this.tracks, size));
    }

    private void processUnparsedAtom(long j) {
        if (this.atomType == 1836086884) {
            int i = this.atomHeaderBytesRead;
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, j, C.TIME_UNSET, j + ((long) i), this.atomSize - ((long) i));
        }
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws ParserException {
        Mp4Box.ContainerBox containerBoxPeek;
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.getData(), 0, 8, true)) {
                processEndOfStreamReadingAtomHeader();
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        long j = this.atomSize;
        if (j == 1) {
            extractorInput.readFully(this.atomHeader.getData(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        } else if (j == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && (containerBoxPeek = this.containerAtoms.peek()) != null) {
                length = containerBoxPeek.endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        long j2 = this.atomSize;
        int i = this.atomHeaderBytesRead;
        if (j2 < i) {
            if (this.atomType != 1718773093 || i != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
            }
            this.atomSize = i;
        }
        if (shouldParseContainerAtom(this.atomType)) {
            long position = extractorInput.getPosition();
            long j3 = this.atomSize;
            int i2 = this.atomHeaderBytesRead;
            long j4 = (position + j3) - ((long) i2);
            if (j3 != i2 && this.atomType == 1835365473) {
                maybeSkipRemainingMetaAtomHeaderBytes(extractorInput);
            }
            this.containerAtoms.push(new Mp4Box.ContainerBox(this.atomType, j4));
            if (this.atomSize == this.atomHeaderBytesRead) {
                processAtomEnded(j4);
            } else {
                enterReadingAtomHeaderState();
            }
        } else if (shouldParseLeafAtom(this.atomType)) {
            o8.r(this.atomHeaderBytesRead == 8);
            o8.r(this.atomSize <= SieveCacheKt.NodeLinkMask);
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.getData(), 0, parsableByteArray.getData(), 0, 8);
            this.atomData = parsableByteArray;
            this.parserState = 1;
        } else {
            processUnparsedAtom(extractorInput.getPosition() - ((long) this.atomHeaderBytesRead));
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    private boolean readAtomPayload(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        long j = this.atomSize - ((long) this.atomHeaderBytesRead);
        long position = extractorInput.getPosition() + j;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray == null) {
            if (!this.seenFtypAtom && this.atomType == 1835295092) {
                this.fileType = 1;
            }
            if (j < RELOAD_MINIMUM_SEEK_DISTANCE) {
                extractorInput.skipFully((int) j);
            } else {
                positionHolder.position = extractorInput.getPosition() + j;
                z = true;
            }
            processAtomEnded(position);
            if (this.seekToAxteAtom) {
                this.readingAuxiliaryTracks = true;
                positionHolder.position = this.axteAtomOffset;
                this.seekToAxteAtom = false;
                z = true;
            }
            return (z || this.parserState == 2) ? false : true;
        }
        extractorInput.readFully(parsableByteArray.getData(), this.atomHeaderBytesRead, (int) j);
        if (this.atomType == 1718909296) {
            this.seenFtypAtom = true;
            this.fileType = processFtypAtom(parsableByteArray);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(new Mp4Box.LeafBox(this.atomType, parsableByteArray));
        }
        z = false;
        processAtomEnded(position);
        if (this.seekToAxteAtom) {
            this.readingAuxiliaryTracks = true;
            positionHolder.position = this.axteAtomOffset;
            this.seekToAxteAtom = false;
            z = true;
        }
        if (z) {
        }
    }

    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    private int readSample(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        TrackOutput.CryptoData cryptoData;
        ?? r2;
        boolean z;
        int iNumberOfBytesInNalUnitHeader;
        long position = extractorInput.getPosition();
        int trackIndexOfNextReadSample = this.sampleTrackIndex;
        if (trackIndexOfNextReadSample == -1) {
            trackIndexOfNextReadSample = getTrackIndexOfNextReadSample(position);
            this.sampleTrackIndex = trackIndexOfNextReadSample;
            if (trackIndexOfNextReadSample == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[trackIndexOfNextReadSample];
        TrackOutput trackOutput = mp4Track.trackOutput;
        int i = mp4Track.sampleIndex;
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j = trackSampleTable.offsets[i] + this.sampleOffsetForAuxiliaryTracks;
        int i2 = trackSampleTable.sizes[i];
        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
        long j2 = (j - position) + ((long) this.sampleBytesRead);
        if (j2 < 0 || j2 >= RELOAD_MINIMUM_SEEK_DISTANCE) {
            positionHolder.position = j;
            return 1;
        }
        if (mp4Track.track.sampleTransformation == 1) {
            j2 += 8;
            i2 -= 8;
        }
        extractorInput.skipFully((int) j2);
        if (!canReadWithinGopSampleDependencies(mp4Track.track.format)) {
            this.isSampleDependedOn = true;
        }
        Track track = mp4Track.track;
        if (track.nalUnitLengthFieldLength == 0) {
            if (MimeTypes.AUDIO_AC4.equals(track.format.sampleMimeType)) {
                if (this.sampleBytesWritten == 0) {
                    Ac4Util.getAc4SampleHeader(i2, this.scratch);
                    trackOutput.sampleData(this.scratch, 7);
                    this.sampleBytesWritten += 7;
                }
                i2 += 7;
                cryptoData = null;
            } else if (mp4Track.pendingFormat == null || !Objects.equals(mp4Track.track.format.sampleMimeType, MimeTypes.AUDIO_MPEG)) {
                cryptoData = null;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.startSample(extractorInput);
                }
            } else {
                Format formatBuild = mp4Track.pendingFormat;
                this.scratch.reset(4);
                extractorInput.peekFully(this.scratch.getData(), 0, 4);
                extractorInput.resetPeekPosition();
                MpegAudioUtil.Header header = new MpegAudioUtil.Header();
                TrackOutput trackOutput2 = mp4Track.trackOutput;
                if (header.setForHeaderData(this.scratch.readInt()) && !Objects.equals(formatBuild.sampleMimeType, header.mimeType)) {
                    Format.Builder builderBuildUpon = formatBuild.buildUpon();
                    String str = header.mimeType;
                    str.getClass();
                    formatBuild = builderBuildUpon.setSampleMimeType(str).build();
                }
                trackOutput2.format(formatBuild);
                cryptoData = null;
                mp4Track.pendingFormat = null;
            }
            while (true) {
                int i3 = this.sampleBytesWritten;
                if (i3 >= i2) {
                    break;
                }
                int iSampleData = trackOutput.sampleData((DataReader) extractorInput, i2 - i3, false);
                this.sampleBytesRead += iSampleData;
                this.sampleBytesWritten += iSampleData;
                this.sampleCurrentNalBytesRemaining -= iSampleData;
            }
        } else {
            byte[] data = this.nalPrefix.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i4 = 4 - mp4Track.track.nalUnitLengthFieldLength;
            i2 += i4;
            while (this.sampleBytesWritten < i2) {
                int i5 = this.sampleCurrentNalBytesRemaining;
                if (i5 == 0) {
                    Track track2 = mp4Track.track;
                    int i6 = track2.nalUnitLengthFieldLength;
                    if (this.isSampleDependedOn || NalUnitUtil.numberOfBytesInNalUnitHeader(track2.format) + i6 > mp4Track.sampleTable.sizes[i] - this.sampleBytesRead) {
                        iNumberOfBytesInNalUnitHeader = 0;
                    } else {
                        iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format);
                        i6 = mp4Track.track.nalUnitLengthFieldLength + iNumberOfBytesInNalUnitHeader;
                    }
                    extractorInput.readFully(data, i4, i6);
                    this.sampleBytesRead += i6;
                    this.nalPrefix.setPosition(0);
                    int i7 = this.nalPrefix.readInt();
                    if (i7 < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.sampleCurrentNalBytesRemaining = i7 - iNumberOfBytesInNalUnitHeader;
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    if (iNumberOfBytesInNalUnitHeader > 0) {
                        trackOutput.sampleData(this.nalPrefix, iNumberOfBytesInNalUnitHeader);
                        this.sampleBytesWritten += iNumberOfBytesInNalUnitHeader;
                        if (NalUnitUtil.isDependedOn(data, 4, iNumberOfBytesInNalUnitHeader, mp4Track.track.format)) {
                            this.isSampleDependedOn = true;
                        }
                    }
                } else {
                    int iSampleData2 = trackOutput.sampleData((DataReader) extractorInput, i5, false);
                    this.sampleBytesRead += iSampleData2;
                    this.sampleBytesWritten += iSampleData2;
                    this.sampleCurrentNalBytesRemaining -= iSampleData2;
                }
            }
            cryptoData = null;
        }
        int i8 = i2;
        TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
        long j3 = trackSampleTable2.timestampsUs[i];
        int i9 = trackSampleTable2.flags[i];
        if (!this.isSampleDependedOn) {
            i9 |= 67108864;
        }
        int i10 = i9;
        if (trueHdSampleRechunker != null) {
            TrackOutput.CryptoData cryptoData2 = cryptoData;
            z = false;
            trueHdSampleRechunker.sampleMetadata(trackOutput, j3, i10, i8, 0, null);
            if (i + 1 == mp4Track.sampleTable.sampleCount) {
                r2 = z;
                trueHdSampleRechunker.outputPendingSampleMetadata(trackOutput, cryptoData2);
                r2 = z;
            }
        } else {
            r2 = 0;
            trackOutput.sampleMetadata(j3, i10, i8, 0, null);
        }
        r2 = z;
        mp4Track.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = r2;
        this.sampleBytesWritten = r2;
        this.sampleCurrentNalBytesRemaining = r2;
        this.isSampleDependedOn = r2;
        return r2;
    }

    private int readSefData(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i = this.sefReader.read(extractorInput, positionHolder, this.slowMotionMetadataEntries);
        if (i == 1 && positionHolder.position == 0) {
            enterReadingAtomHeaderState();
        }
        return i;
    }

    private static boolean shouldParseContainerAtom(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473 || i == 1635284069;
    }

    private static boolean shouldParseLeafAtom(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    private boolean shouldSeekToAxteAtom(Metadata metadata) {
        MdtaMetadataEntry mdtaMetadataEntry;
        if (metadata == null || (this.flags & 64) == 0 || (mdtaMetadataEntry = (MdtaMetadataEntry) metadata.getFirstMatchingEntry(MdtaMetadataEntry.class, new ye5())) == null) {
            return false;
        }
        long unsignedLongToLong = new ParsableByteArray(mdtaMetadataEntry.value).readUnsignedLongToLong();
        if (unsignedLongToLong <= 0) {
            return false;
        }
        this.axteAtomOffset = unsignedLongToLong;
        return true;
    }

    private void updateSampleIndex(Mp4Track mp4Track, long j) {
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
        if (indexOfEarlierOrEqualSynchronizationSample == -1) {
            indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
        }
        mp4Track.sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
    }

    public long[] getSampleTimestampsUs(int i) {
        Mp4Track[] mp4TrackArr = this.tracks;
        return mp4TrackArr.length <= i ? new long[0] : mp4TrackArr[i].sampleTable.timestampsUs;
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        if ((this.flags & 16) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.subtitleParserFactory);
        }
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        if (this.omitTrackSampleTable && this.moovAtomProcessed) {
            return -1;
        }
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    if (i == 3) {
                        return readSefData(extractorInput, positionHolder);
                    }
                    ud.g();
                    return 0;
                }
                if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.isSampleDependedOn = false;
        this.moovAtomProcessed = false;
        if (j == 0) {
            if (this.parserState != 3) {
                enterReadingAtomHeaderState();
                return;
            } else {
                this.sefReader.reset();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        for (Mp4Track mp4Track : this.tracks) {
            updateSampleIndex(mp4Track, j2);
            TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        w wVarS;
        SniffFailure sniffFailureSniffUnfragmented = Sniffer.sniffUnfragmented(extractorInput, (this.flags & 2) != 0);
        if (sniffFailureSniffUnfragmented != null) {
            wVarS = j.s(sniffFailureSniffUnfragmented);
        } else {
            j.b bVar = j.c;
            wVarS = w.f;
        }
        this.lastSniffFailures = wVarS;
        return sniffFailureSniffUnfragmented == null;
    }

    @Override // androidx.media3.extractor.Extractor
    public j<SniffFailure> getSniffFailureDetails() {
        return this.lastSniffFailures;
    }

    public Mp4Extractor(SubtitleParser.Factory factory) {
        this(factory, 0);
    }

    @Deprecated
    public Mp4Extractor(int i) {
        this(SubtitleParser.Factory.UNSUPPORTED, i);
    }

    @Deprecated
    public Mp4Extractor() {
        this(SubtitleParser.Factory.UNSUPPORTED, 16);
    }
}
