package androidx.media3.muxer;

import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import com.google.common.collect.j;
import defpackage.m96;
import defpackage.o8;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentedMp4Muxer implements Muxer {
    public static final long DEFAULT_FRAGMENT_DURATION_MS = 2000;
    public static final j<String> SUPPORTED_AUDIO_SAMPLE_MIME_TYPES;
    public static final j<String> SUPPORTED_VIDEO_SAMPLE_MIME_TYPES;
    private final FragmentedMp4Writer fragmentedMp4Writer;
    private final MetadataCollector metadataCollector;
    private final SparseArray<Track> trackIdToTrack;

    static {
        j.b bVar = j.c;
        Object[] objArr = {MimeTypes.VIDEO_AV1, MimeTypes.VIDEO_H263, "video/avc", MimeTypes.VIDEO_H265, MimeTypes.VIDEO_MP4V, MimeTypes.VIDEO_VP9, MimeTypes.VIDEO_APV, MimeTypes.VIDEO_DOLBY_VISION};
        m96.b(8, objArr);
        SUPPORTED_VIDEO_SAMPLE_MIME_TYPES = j.k(8, objArr);
        Object[] objArr2 = {"audio/mp4a-latm", MimeTypes.AUDIO_AMR_NB, MimeTypes.AUDIO_AMR_WB, MimeTypes.AUDIO_OPUS, MimeTypes.AUDIO_VORBIS, MimeTypes.AUDIO_RAW};
        m96.b(6, objArr2);
        SUPPORTED_AUDIO_SAMPLE_MIME_TYPES = j.k(6, objArr2);
    }

    private FragmentedMp4Muxer(WritableByteChannel writableByteChannel, long j, boolean z) {
        MetadataCollector metadataCollector = new MetadataCollector();
        this.metadataCollector = metadataCollector;
        this.fragmentedMp4Writer = new FragmentedMp4Writer(writableByteChannel, metadataCollector, AnnexBToAvccConverter.DEFAULT, j, z);
        this.trackIdToTrack = new SparseArray<>();
    }

    @Override // androidx.media3.muxer.Muxer
    public void addMetadataEntry(Metadata.Entry entry) {
        o8.f(MuxerUtil.isMetadataSupported(entry), "Unsupported metadata");
        this.metadataCollector.addMetadata(entry);
    }

    @Override // androidx.media3.muxer.Muxer
    public int addTrack(Format format) {
        Track trackAddTrack = this.fragmentedMp4Writer.addTrack(1, format);
        this.trackIdToTrack.append(trackAddTrack.id, trackAddTrack);
        return trackAddTrack.id;
    }

    @Override // androidx.media3.muxer.Muxer, java.lang.AutoCloseable
    public void close() throws MuxerException {
        try {
            this.fragmentedMp4Writer.close();
        } catch (IOException e) {
            throw new MuxerException("Failed to close the muxer", e);
        }
    }

    @Override // androidx.media3.muxer.Muxer
    public void writeSampleData(int i, ByteBuffer byteBuffer, BufferInfo bufferInfo) throws MuxerException {
        try {
            this.fragmentedMp4Writer.writeSampleData(this.trackIdToTrack.get(i), byteBuffer, bufferInfo);
        } catch (IOException e) {
            throw new MuxerException("Failed to write sample for presentationTimeUs=" + bufferInfo.presentationTimeUs + ", size=" + bufferInfo.size, e);
        }
    }

    public static final class Builder {
        private long fragmentDurationMs;
        private final WritableByteChannel outputChannel;
        private boolean sampleCopyEnabled;

        public Builder(WritableByteChannel writableByteChannel) {
            this.outputChannel = writableByteChannel;
            this.fragmentDurationMs = 2000L;
            this.sampleCopyEnabled = true;
        }

        public FragmentedMp4Muxer build() {
            return new FragmentedMp4Muxer(this.outputChannel, this.fragmentDurationMs, this.sampleCopyEnabled);
        }

        public Builder setFragmentDurationMs(long j) {
            this.fragmentDurationMs = j;
            return this;
        }

        public Builder setSampleCopyingEnabled(boolean z) {
            this.sampleCopyEnabled = z;
            return this;
        }

        @Deprecated
        public Builder(OutputStream outputStream) {
            this(Channels.newChannel(outputStream));
        }
    }
}
