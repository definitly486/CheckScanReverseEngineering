package androidx.camera.video.internal.muxer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.ParcelFileDescriptor;
import androidx.camera.video.internal.muxer.Media3MuxerImpl;
import androidx.camera.video.internal.utils.MediaFormatExt;
import androidx.media3.muxer.MediaMuxerCompat;
import defpackage.d85;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh;
import defpackage.ll3;
import defpackage.or2;
import defpackage.p31;
import defpackage.vh;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Media3MuxerImpl implements Muxer {
    private int captureFps;
    private MediaMuxerCompat mediaMuxerCompat;
    private State state = State.IDLE;

    public enum State {
        IDLE,
        CONFIGURED,
        STARTED,
        STOPPED,
        RELEASED;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int addTrack$lambda$1(Media3MuxerImpl media3MuxerImpl, MediaFormat mediaFormat) {
        MediaMuxerCompat mediaMuxerCompat = media3MuxerImpl.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        return mediaMuxerCompat.addTrack(mediaFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 start$lambda$1(Media3MuxerImpl media3MuxerImpl) {
        MediaMuxerCompat mediaMuxerCompat = media3MuxerImpl.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        mediaMuxerCompat.start();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 stop$lambda$1(Media3MuxerImpl media3MuxerImpl) {
        MediaMuxerCompat mediaMuxerCompat = media3MuxerImpl.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        mediaMuxerCompat.stop();
        return j59.a;
    }

    private final int toMediaMuxerCompatFormat(int i) {
        if (i == 0 || i == 2) {
            return 0;
        }
        fg.c(jh.b(i, "Unsupported format: "));
        return 0;
    }

    private final <T> T wrapMuxerException(ll3<? extends T> ll3Var) throws MuxerException {
        try {
            return ll3Var.invoke();
        } catch (Exception e) {
            throw new MuxerException("MediaMuxer operation failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 writeSampleData$lambda$1(Media3MuxerImpl media3MuxerImpl, int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        MediaMuxerCompat mediaMuxerCompat = media3MuxerImpl.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        mediaMuxerCompat.writeSampleData(i, byteBuffer, bufferInfo);
        return j59.a;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public int addTrack(MediaFormat mediaFormat) {
        int i;
        mediaFormat.getClass();
        int i2 = 0;
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return 0;
        }
        if (MediaFormatExt.INSTANCE.isVideo(mediaFormat) && (i = this.captureFps) > 0) {
            mediaFormat.setInteger("capture-rate", i);
        }
        return ((Number) wrapMuxerException(new d85(i2, this, mediaFormat))).intValue();
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public boolean isInterruptionResilient() {
        return true;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void release() {
        if (this.state == State.RELEASED) {
            return;
        }
        try {
            MediaMuxerCompat mediaMuxerCompat = this.mediaMuxerCompat;
            if (mediaMuxerCompat != null) {
                mediaMuxerCompat.release();
                j59 j59Var = j59.a;
            }
        } catch (Throwable unused) {
        }
        this.mediaMuxerCompat = null;
        this.state = State.RELEASED;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setCaptureFps(int i) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
        } else if (i > 0) {
            this.captureFps = i;
        } else {
            fg.c("captureFps must be positive");
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setLocation(double d, double d2) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return;
        }
        MediaMuxerCompat mediaMuxerCompat = this.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        mediaMuxerCompat.setLocation((float) d, (float) d2);
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setOrientationDegrees(int i) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return;
        }
        MediaMuxerCompat mediaMuxerCompat = this.mediaMuxerCompat;
        mediaMuxerCompat.getClass();
        mediaMuxerCompat.setOrientationHint(i);
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setOutput(ParcelFileDescriptor parcelFileDescriptor, int i) throws IOException {
        parcelFileDescriptor.getClass();
        if (this.state != State.IDLE) {
            vh.e(this.state, "Muxer is not idle. Current state: ");
            return;
        }
        this.mediaMuxerCompat = new MediaMuxerCompat(parcelFileDescriptor.getFileDescriptor(), toMediaMuxerCompatFormat(i));
        parcelFileDescriptor.close();
        this.state = State.CONFIGURED;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void start() throws MuxerException {
        State state = this.state;
        State state2 = State.STARTED;
        if (state == state2) {
            return;
        }
        if (state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
        } else {
            wrapMuxerException(new or2(this, 1));
            this.state = state2;
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void stop() {
        State state = this.state;
        if (state == State.STOPPED) {
            return;
        }
        if (state != State.STARTED) {
            vh.e(this.state, "Muxer is not started. Current state: ");
            return;
        }
        try {
            wrapMuxerException(new p31(this, 2));
        } finally {
            this.state = State.STOPPED;
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void writeSampleData(final int i, final ByteBuffer byteBuffer, final MediaCodec.BufferInfo bufferInfo) throws MuxerException {
        byteBuffer.getClass();
        bufferInfo.getClass();
        if (this.state == State.STARTED) {
            wrapMuxerException(new ll3() { // from class: e85
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Media3MuxerImpl.writeSampleData$lambda$1(this.b, i, byteBuffer, bufferInfo);
                }
            });
        } else {
            vh.e(this.state, "Muxer is not started. Current state: ");
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setOutput(String str, int i) {
        str.getClass();
        if (this.state == State.IDLE) {
            this.mediaMuxerCompat = new MediaMuxerCompat(str, toMediaMuxerCompatFormat(i));
            this.state = State.CONFIGURED;
        } else {
            vh.e(this.state, "Muxer is not idle. Current state: ");
        }
    }
}
