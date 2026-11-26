package yads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class cu5 implements qy3 {
    public final MediaCodec a;
    public ByteBuffer[] b;
    public ByteBuffer[] c;

    public cu5(MediaCodec mediaCodec) {
        this.a = mediaCodec;
        if (u56.a < 21) {
            this.b = mediaCodec.getInputBuffers();
            this.c = mediaCodec.getOutputBuffers();
        }
    }

    public final void a(py3 py3Var, MediaCodec mediaCodec, long j, long j2) {
        nz3 nz3Var = (nz3) py3Var;
        nz3Var.getClass();
        if (u56.a < 30) {
            nz3Var.b.sendMessageAtFrontOfQueue(Message.obtain(nz3Var.b, 0, (int) (j >> 32), (int) j));
            return;
        }
        oz3 oz3Var = nz3Var.c;
        if (nz3Var != oz3Var.n1) {
            return;
        }
        if (j == Long.MAX_VALUE) {
            oz3Var.z0 = true;
            return;
        }
        try {
            oz3Var.b(j);
            oz3Var.A();
            oz3Var.B0.e++;
            oz3Var.V0 = true;
            if (!oz3Var.T0) {
                oz3Var.T0 = true;
                oz3Var.I0.a(oz3Var.P0);
                oz3Var.R0 = true;
            }
            oz3Var.a(j);
        } catch (up2 e) {
            nz3Var.c.A0 = e;
        }
    }

    @Override // yads.qy3
    public final ByteBuffer b(int i) {
        return u56.a >= 21 ? this.a.getInputBuffer(i) : this.b[i];
    }

    @Override // yads.qy3
    public final ByteBuffer c(int i) {
        return u56.a >= 21 ? this.a.getOutputBuffer(i) : this.c[i];
    }

    @Override // yads.qy3
    public final void flush() {
        this.a.flush();
    }

    @Override // yads.qy3
    public final void release() {
        this.b = null;
        this.c = null;
        this.a.release();
    }

    @Override // yads.qy3
    public final int b() {
        return this.a.dequeueInputBuffer(0L);
    }

    @Override // yads.qy3
    public final MediaFormat a() {
        return this.a.getOutputFormat();
    }

    @Override // yads.qy3
    public final void a(int i, int i2, long j, int i3) {
        this.a.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // yads.qy3
    public final void a(int i, ca0 ca0Var, long j) {
        this.a.queueSecureInputBuffer(i, 0, ca0Var.i, j, 0);
    }

    @Override // yads.qy3
    public final void a(int i, boolean z) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override // yads.qy3
    public final void a(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    @Override // yads.qy3
    public final void a(final nz3 nz3Var, Handler handler) {
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: cs9
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.a(nz3Var, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // yads.qy3
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && u56.a < 21) {
                this.c = this.a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // yads.qy3
    public final void a(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override // yads.qy3
    public final void a(Bundle bundle) {
        this.a.setParameters(bundle);
    }

    @Override // yads.qy3
    public final void a(int i) {
        this.a.setVideoScalingMode(i);
    }
}
