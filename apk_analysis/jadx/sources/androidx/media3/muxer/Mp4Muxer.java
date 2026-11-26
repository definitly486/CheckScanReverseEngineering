package androidx.media3.muxer;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.container.MdtaMetadataEntry;
import com.google.common.collect.j;
import defpackage.kd8;
import defpackage.m96;
import defpackage.o8;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes3.dex */
public final class Mp4Muxer implements Muxer {
    public static final int FILE_FORMAT_DEFAULT = 0;
    public static final int FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION = 1;
    public static final int LAST_SAMPLE_DURATION_BEHAVIOR_SET_FROM_END_OF_STREAM_BUFFER_OR_DUPLICATE_PREVIOUS = 1;
    public static final int LAST_SAMPLE_DURATION_BEHAVIOR_SET_TO_ZERO = 0;
    public static final j<String> SUPPORTED_AUDIO_SAMPLE_MIME_TYPES;
    public static final j<String> SUPPORTED_VIDEO_SAMPLE_MIME_TYPES;
    private static final String TAG = "Mp4Muxer";
    private final AnnexBToAvccConverter annexBToAvccConverter;
    private final boolean attemptStreamableOutputEnabled;
    private final List<Track> auxiliaryTracks;
    private MetadataCollector auxiliaryTracksMetadataCollector;
    private Mp4Writer auxiliaryTracksMp4Writer;
    private String cacheFilePath;
    private final kd8<String> cacheFileSupplier;
    private SeekableMuxerOutput cacheMuxerOutput;
    private final int freeSpaceAfterFtypInBytes;
    private final int lastSampleDurationBehavior;
    private final MetadataCollector metadataCollector;
    private final Mp4AtFileParameters mp4AtFileParameters;
    private final Mp4Writer mp4Writer;
    private final SeekableMuxerOutput muxerOutput;
    private int nextTrackId;
    private final int outputFileFormat;
    private final boolean sampleBatchingEnabled;
    private final boolean sampleCopyEnabled;
    private final List<Track> trackIdToTrack;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FileFormat {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LastSampleDurationBehavior {
    }

    public static final class Mp4AtFileParameters {
        public final boolean shouldInterleaveSamples;

        public Mp4AtFileParameters(boolean z) {
            this.shouldInterleaveSamples = z;
        }
    }

    static {
        j.b bVar = j.c;
        Object[] objArr = {MimeTypes.VIDEO_AV1, MimeTypes.VIDEO_H263, "video/avc", MimeTypes.VIDEO_H265, MimeTypes.VIDEO_MP4V, MimeTypes.VIDEO_VP9, MimeTypes.VIDEO_APV, MimeTypes.VIDEO_DOLBY_VISION};
        m96.b(8, objArr);
        SUPPORTED_VIDEO_SAMPLE_MIME_TYPES = j.k(8, objArr);
        Object[] objArr2 = {"audio/mp4a-latm", MimeTypes.AUDIO_AMR_NB, MimeTypes.AUDIO_AMR_WB, MimeTypes.AUDIO_OPUS, MimeTypes.AUDIO_VORBIS, MimeTypes.AUDIO_RAW};
        m96.b(6, objArr2);
        SUPPORTED_AUDIO_SAMPLE_MIME_TYPES = j.k(6, objArr2);
    }

    private Mp4Muxer(SeekableMuxerOutput seekableMuxerOutput, kd8<String> kd8Var, int i, AnnexBToAvccConverter annexBToAvccConverter, boolean z, boolean z2, boolean z3, int i2, Mp4AtFileParameters mp4AtFileParameters, int i3) {
        this.muxerOutput = seekableMuxerOutput;
        this.cacheFileSupplier = kd8Var;
        this.lastSampleDurationBehavior = i;
        this.annexBToAvccConverter = annexBToAvccConverter;
        this.sampleCopyEnabled = z2 && z;
        this.sampleBatchingEnabled = z2;
        this.attemptStreamableOutputEnabled = z3;
        this.outputFileFormat = i2;
        this.mp4AtFileParameters = mp4AtFileParameters;
        this.freeSpaceAfterFtypInBytes = i3;
        MetadataCollector metadataCollector = new MetadataCollector();
        this.metadataCollector = metadataCollector;
        this.mp4Writer = new Mp4Writer(seekableMuxerOutput, metadataCollector, annexBToAvccConverter, i, z, z2, z3, i3);
        this.trackIdToTrack = new ArrayList();
        this.auxiliaryTracks = new ArrayList();
    }

    private void appendAuxiliaryTracksDataToTheOutputFile() throws IOException {
        if (this.auxiliaryTracksMp4Writer == null) {
            return;
        }
        SeekableMuxerOutput seekableMuxerOutput = this.muxerOutput;
        seekableMuxerOutput.setPosition(seekableMuxerOutput.getSize());
        String str = this.cacheFilePath;
        str.getClass();
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            FileChannel channel = fileInputStream.getChannel();
            long size = channel.size();
            this.muxerOutput.write(Boxes.getAxteBoxHeader(size));
            channel.transferTo(0L, size, this.muxerOutput);
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    @EnsuresNonNull({"auxiliaryTracksMp4Writer"})
    private void ensureSetupForAuxiliaryTracks() {
        if (this.auxiliaryTracksMp4Writer == null) {
            kd8<String> kd8Var = this.cacheFileSupplier;
            kd8Var.getClass();
            String str = kd8Var.get2();
            this.cacheFilePath = str;
            this.cacheMuxerOutput = SeekableMuxerOutput.of(str);
            MetadataCollector metadataCollector = new MetadataCollector();
            this.auxiliaryTracksMetadataCollector = metadataCollector;
            this.auxiliaryTracksMp4Writer = new Mp4Writer(this.cacheMuxerOutput, metadataCollector, this.annexBToAvccConverter, this.lastSampleDurationBehavior, this.sampleCopyEnabled, this.sampleBatchingEnabled, this.attemptStreamableOutputEnabled, this.freeSpaceAfterFtypInBytes);
        }
    }

    private void finishWritingAuxiliaryTracks() throws IOException {
        if (this.auxiliaryTracksMp4Writer == null) {
            return;
        }
        MetadataCollector metadataCollector = this.auxiliaryTracksMetadataCollector;
        metadataCollector.getClass();
        MuxerUtil.populateAuxiliaryTracksMetadata(metadataCollector, this.metadataCollector.timestampData, false, this.auxiliaryTracks);
        Mp4Writer mp4Writer = this.auxiliaryTracksMp4Writer;
        mp4Writer.getClass();
        mp4Writer.finishWritingSamplesAndFinalizeMoovBox();
    }

    private void finishWritingPrimaryVideoTracks() throws IOException {
        MdtaMetadataEntry auxiliaryTracksOffsetMetadata = MuxerUtil.getAuxiliaryTracksOffsetMetadata(0L);
        if (this.auxiliaryTracksMp4Writer != null) {
            SeekableMuxerOutput seekableMuxerOutput = this.cacheMuxerOutput;
            seekableMuxerOutput.getClass();
            this.metadataCollector.addMetadata(MuxerUtil.getAuxiliaryTracksLengthMetadata(seekableMuxerOutput.getSize() + 16));
            this.metadataCollector.addMetadata(auxiliaryTracksOffsetMetadata);
        }
        this.mp4Writer.finishWritingSamplesAndFinalizeMoovBox();
        if (this.auxiliaryTracksMp4Writer != null) {
            long size = this.muxerOutput.getSize();
            this.metadataCollector.removeMdtaMetadataEntry(auxiliaryTracksOffsetMetadata);
            this.metadataCollector.addMetadata(MuxerUtil.getAuxiliaryTracksOffsetMetadata(size));
            this.mp4Writer.finalizeMoovBox();
            o8.s(this.muxerOutput.getSize() == size, "The auxiliary tracks offset should remain the same");
        }
    }

    @Override // androidx.media3.muxer.Muxer
    public void addMetadataEntry(Metadata.Entry entry) {
        o8.f(MuxerUtil.isMetadataSupported(entry), "Unsupported metadata");
        this.metadataCollector.addMetadata(entry);
    }

    public int addTrack(int i, Format format) throws MuxerException {
        Track trackAddTrack;
        if (this.outputFileFormat == 1 && MuxerUtil.isAuxiliaryTrack(format)) {
            Mp4AtFileParameters mp4AtFileParameters = this.mp4AtFileParameters;
            mp4AtFileParameters.getClass();
            if (mp4AtFileParameters.shouldInterleaveSamples) {
                Mp4Writer mp4Writer = this.mp4Writer;
                int i2 = this.nextTrackId;
                this.nextTrackId = i2 + 1;
                trackAddTrack = mp4Writer.addAuxiliaryTrack(i2, i, format);
            } else {
                try {
                    ensureSetupForAuxiliaryTracks();
                    Mp4Writer mp4Writer2 = this.auxiliaryTracksMp4Writer;
                    int i3 = this.nextTrackId;
                    this.nextTrackId = i3 + 1;
                    trackAddTrack = mp4Writer2.addTrack(i3, i, format);
                    this.auxiliaryTracks.add(trackAddTrack);
                } catch (FileNotFoundException e) {
                    throw new MuxerException("Cache file not found", e);
                }
            }
        } else {
            Mp4Writer mp4Writer3 = this.mp4Writer;
            int i4 = this.nextTrackId;
            this.nextTrackId = i4 + 1;
            trackAddTrack = mp4Writer3.addTrack(i4, i, format);
        }
        this.trackIdToTrack.add(trackAddTrack);
        return trackAddTrack.id;
    }

    @Override // androidx.media3.muxer.Muxer, java.lang.AutoCloseable
    public void close() throws MuxerException {
        MuxerException muxerException;
        try {
            finishWritingAuxiliaryTracks();
            finishWritingPrimaryVideoTracks();
            appendAuxiliaryTracksDataToTheOutputFile();
            muxerException = null;
        } catch (IOException e) {
            muxerException = new MuxerException("Failed to finish writing data", e);
        }
        try {
            this.muxerOutput.close();
        } catch (IOException e2) {
            if (muxerException == null) {
                muxerException = new MuxerException("Failed to close output stream", e2);
            } else {
                Log.e(TAG, "Failed to close output stream", e2);
            }
        }
        SeekableMuxerOutput seekableMuxerOutput = this.cacheMuxerOutput;
        if (seekableMuxerOutput != null) {
            try {
                seekableMuxerOutput.close();
            } catch (IOException e3) {
                if (muxerException == null) {
                    muxerException = new MuxerException("Failed to close the cache file output stream", e3);
                } else {
                    Log.e(TAG, "Failed to close cache file output stream", e3);
                }
            }
        }
        if (muxerException != null) {
            throw muxerException;
        }
    }

    @Override // androidx.media3.muxer.Muxer
    public void writeSampleData(int i, ByteBuffer byteBuffer, BufferInfo bufferInfo) throws MuxerException {
        o8.f(i < this.trackIdToTrack.size(), "Track id is invalid");
        byteBuffer.getClass();
        bufferInfo.getClass();
        o8.e(byteBuffer.remaining() == bufferInfo.size);
        Track track = this.trackIdToTrack.get(i);
        try {
            if (!this.auxiliaryTracks.contains(track)) {
                this.mp4Writer.writeSampleData(track, byteBuffer, bufferInfo);
                return;
            }
            Mp4Writer mp4Writer = this.auxiliaryTracksMp4Writer;
            mp4Writer.getClass();
            mp4Writer.writeSampleData(track, byteBuffer, bufferInfo);
        } catch (IOException e) {
            throw new MuxerException("Failed to write sample for presentationTimeUs=" + bufferInfo.presentationTimeUs + ", size=" + bufferInfo.size, e);
        }
    }

    public static final class Builder {
        private AnnexBToAvccConverter annexBToAvccConverter;
        private boolean attemptStreamableOutputEnabled;
        private kd8<String> cacheFileSupplier;
        private int freeSpaceAfterFtypInBytes;
        private int lastSampleDurationBehavior;
        private Mp4AtFileParameters mp4AtFileParameters;
        private int outputFileFormat;
        private boolean sampleBatchingEnabled;
        private boolean sampleCopyEnabled;
        private final SeekableMuxerOutput seekableMuxerOutput;

        public Builder(SeekableMuxerOutput seekableMuxerOutput) {
            this.seekableMuxerOutput = seekableMuxerOutput;
            this.lastSampleDurationBehavior = 1;
            this.attemptStreamableOutputEnabled = true;
            this.outputFileFormat = 0;
        }

        public Mp4Muxer build() {
            boolean z = true;
            if (this.outputFileFormat == 1) {
                o8.f(this.mp4AtFileParameters != null, "Mp4AtFileParameters must be set for FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION");
                if (!this.mp4AtFileParameters.shouldInterleaveSamples && this.cacheFileSupplier == null) {
                    z = false;
                }
                o8.f(z, "CacheFileSupplier must be set when Mp4AtFileParameters.shouldInterleaveSamples is set to false");
            }
            SeekableMuxerOutput seekableMuxerOutput = this.seekableMuxerOutput;
            kd8<String> kd8Var = this.cacheFileSupplier;
            int i = this.lastSampleDurationBehavior;
            AnnexBToAvccConverter annexBToAvccConverter = this.annexBToAvccConverter;
            if (annexBToAvccConverter == null) {
                annexBToAvccConverter = AnnexBToAvccConverter.DEFAULT;
            }
            return new Mp4Muxer(seekableMuxerOutput, kd8Var, i, annexBToAvccConverter, this.sampleCopyEnabled, this.sampleBatchingEnabled, this.attemptStreamableOutputEnabled, this.outputFileFormat, this.mp4AtFileParameters, this.freeSpaceAfterFtypInBytes);
        }

        public Builder experimentalSetFreeSpaceAfterFileTypeBox(int i) {
            o8.e(i >= 0);
            this.freeSpaceAfterFtypInBytes = i;
            return this;
        }

        public Builder setAnnexBToAvccConverter(AnnexBToAvccConverter annexBToAvccConverter) {
            this.annexBToAvccConverter = annexBToAvccConverter;
            return this;
        }

        public Builder setAttemptStreamableOutputEnabled(boolean z) {
            this.attemptStreamableOutputEnabled = z;
            return this;
        }

        public Builder setCacheFileSupplier(kd8<String> kd8Var) {
            this.cacheFileSupplier = kd8Var;
            return this;
        }

        public Builder setLastSampleDurationBehavior(int i) {
            this.lastSampleDurationBehavior = i;
            return this;
        }

        public Builder setMp4AtFileParameters(Mp4AtFileParameters mp4AtFileParameters) {
            this.mp4AtFileParameters = mp4AtFileParameters;
            return this;
        }

        public Builder setOutputFileFormat(int i) {
            this.outputFileFormat = i;
            return this;
        }

        public Builder setSampleBatchingEnabled(boolean z) {
            this.sampleBatchingEnabled = z;
            return this;
        }

        public Builder setSampleCopyingEnabled(boolean z) {
            this.sampleCopyEnabled = z;
            return this;
        }

        @Deprecated
        public Builder(FileOutputStream fileOutputStream) {
            this(SeekableMuxerOutput.of(fileOutputStream));
        }
    }

    @Override // androidx.media3.muxer.Muxer
    public int addTrack(Format format) {
        return addTrack(1, format);
    }
}
