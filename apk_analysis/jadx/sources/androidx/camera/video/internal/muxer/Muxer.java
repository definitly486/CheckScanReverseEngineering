package androidx.camera.video.internal.muxer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.ParcelFileDescriptor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface Muxer {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int MUXER_FORMAT_3GPP = 2;
    public static final int MUXER_FORMAT_MPEG_4 = 0;
    public static final int MUXER_FORMAT_WEBM = 1;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int MUXER_FORMAT_3GPP = 2;
        public static final int MUXER_FORMAT_MPEG_4 = 0;
        public static final int MUXER_FORMAT_WEBM = 1;

        private Companion() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Format {
    }

    int addTrack(MediaFormat mediaFormat);

    boolean isInterruptionResilient();

    void release();

    void setCaptureFps(int i);

    void setLocation(double d, double d2);

    void setOrientationDegrees(int i);

    void setOutput(ParcelFileDescriptor parcelFileDescriptor, int i);

    void setOutput(String str, int i);

    void start();

    void stop();

    void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);
}
