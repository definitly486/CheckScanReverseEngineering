package androidx.camera.video.internal.muxer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import androidx.camera.video.internal.compat.Api26Impl;
import androidx.camera.video.internal.muxer.MediaMuxerImpl;
import androidx.camera.video.internal.utils.MediaFormatExt;
import androidx.camera.video.internal.workaround.CorrectNegativeLatLongForMediaMuxer;
import defpackage.ah;
import defpackage.b80;
import defpackage.ff;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh;
import defpackage.ll3;
import defpackage.pw1;
import defpackage.vh;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMuxerImpl implements Muxer {
    private int captureFps;
    private MediaMuxer mediaMuxer;
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
    public static final int addTrack$lambda$1(MediaMuxerImpl mediaMuxerImpl, MediaFormat mediaFormat) {
        MediaMuxer mediaMuxer = mediaMuxerImpl.mediaMuxer;
        mediaMuxer.getClass();
        return mediaMuxer.addTrack(mediaFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 start$lambda$1(MediaMuxerImpl mediaMuxerImpl) {
        MediaMuxer mediaMuxer = mediaMuxerImpl.mediaMuxer;
        mediaMuxer.getClass();
        mediaMuxer.start();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 stop$lambda$1(MediaMuxerImpl mediaMuxerImpl) {
        MediaMuxer mediaMuxer = mediaMuxerImpl.mediaMuxer;
        mediaMuxer.getClass();
        mediaMuxer.stop();
        return j59.a;
    }

    private final int toMediaMuxerFormat(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
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
    public static final j59 writeSampleData$lambda$1(MediaMuxerImpl mediaMuxerImpl, int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        MediaMuxer mediaMuxer = mediaMuxerImpl.mediaMuxer;
        mediaMuxer.getClass();
        mediaMuxer.writeSampleData(i, byteBuffer, bufferInfo);
        return j59.a;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public int addTrack(MediaFormat mediaFormat) {
        mediaFormat.getClass();
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return 0;
        }
        int i = 1;
        if (MediaFormatExt.INSTANCE.isVideo(mediaFormat) && this.captureFps > 0) {
            mediaFormat.setInteger(MediaFormatExt.KEY_TIMELAPSE_ENABLED, 1);
            mediaFormat.setInteger(MediaFormatExt.KEY_TIMELAPSE_FPS, this.captureFps);
        }
        return ((Number) wrapMuxerException(new pw1(i, this, mediaFormat))).intValue();
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public boolean isInterruptionResilient() {
        return false;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void release() {
        if (this.state == State.RELEASED) {
            return;
        }
        try {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            if (mediaMuxer != null) {
                mediaMuxer.release();
                j59 j59Var = j59.a;
            }
        } catch (Throwable unused) {
        }
        this.mediaMuxer = null;
        this.state = State.RELEASED;
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setCaptureFps(int i) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
        } else if (i > 0) {
            this.captureFps = i;
        } else {
            ah.f("captureFps must be positive");
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setLocation(double d, double d2) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return;
        }
        Pair<Double, Double> pairAdjustGeoLocation = CorrectNegativeLatLongForMediaMuxer.adjustGeoLocation(d, d2);
        pairAdjustGeoLocation.getClass();
        MediaMuxer mediaMuxer = this.mediaMuxer;
        mediaMuxer.getClass();
        mediaMuxer.setLocation((float) ((Number) pairAdjustGeoLocation.first).doubleValue(), (float) ((Number) pairAdjustGeoLocation.second).doubleValue());
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setOrientationDegrees(int i) {
        if (this.state != State.CONFIGURED) {
            vh.e(this.state, "Muxer is not configured. Current state: ");
            return;
        }
        MediaMuxer mediaMuxer = this.mediaMuxer;
        mediaMuxer.getClass();
        mediaMuxer.setOrientationHint(i);
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void setOutput(ParcelFileDescriptor parcelFileDescriptor, int i) throws IOException {
        parcelFileDescriptor.getClass();
        if (this.state != State.IDLE) {
            vh.e(this.state, "Muxer is not idle. Current state: ");
            return;
        }
        this.mediaMuxer = Api26Impl.createMediaMuxer(parcelFileDescriptor.getFileDescriptor(), toMediaMuxerFormat(i));
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
            wrapMuxerException(new ff(this, 3));
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
            wrapMuxerException(new b80(this, 1));
        } finally {
            this.state = State.STOPPED;
        }
    }

    @Override // androidx.camera.video.internal.muxer.Muxer
    public void writeSampleData(final int i, final ByteBuffer byteBuffer, final MediaCodec.BufferInfo bufferInfo) throws MuxerException {
        byteBuffer.getClass();
        bufferInfo.getClass();
        if (this.state == State.STARTED) {
            wrapMuxerException(new ll3() { // from class: v85
                @Override // defpackage.ll3
                public final Object invoke() {
                    return MediaMuxerImpl.writeSampleData$lambda$1(this.b, i, byteBuffer, bufferInfo);
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
            this.mediaMuxer = new MediaMuxer(str, toMediaMuxerFormat(i));
            this.state = State.CONFIGURED;
        } else {
            vh.e(this.state, "Muxer is not idle. Current state: ");
        }
    }
}
