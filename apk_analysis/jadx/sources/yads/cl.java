package yads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
public final class cl implements qy3 {
    public final MediaCodec a;
    public final gl b;
    public final fl c;
    public boolean d;
    public int e = 0;

    public cl(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2) {
        this.a = mediaCodec;
        this.b = new gl(handlerThread);
        this.c = new fl(mediaCodec, handlerThread2);
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
    public final int b() {
        gl glVar = this.b;
        synchronized (glVar.a) {
            try {
                int i = -1;
                if (glVar.k <= 0 && !glVar.l) {
                    IllegalStateException illegalStateException = glVar.m;
                    if (illegalStateException != null) {
                        glVar.m = null;
                        throw illegalStateException;
                    }
                    MediaCodec.CodecException codecException = glVar.j;
                    if (codecException != null) {
                        glVar.j = null;
                        throw codecException;
                    }
                    ql3 ql3Var = glVar.d;
                    int i2 = ql3Var.c;
                    if (i2 != 0) {
                        if (i2 == 0) {
                            throw new NoSuchElementException();
                        }
                        int[] iArr = ql3Var.d;
                        int i3 = ql3Var.a;
                        i = iArr[i3];
                        ql3Var.a = (i3 + 1) & ql3Var.e;
                        ql3Var.c = i2 - 1;
                    }
                    return i;
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // yads.qy3
    public final ByteBuffer c(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override // yads.qy3
    public final void flush() {
        this.c.a();
        this.a.flush();
        this.b.a();
        this.a.start();
    }

    @Override // yads.qy3
    public final void release() {
        try {
            if (this.e == 1) {
                fl flVar = this.c;
                if (flVar.f) {
                    flVar.a();
                    flVar.b.quit();
                }
                flVar.f = false;
                gl glVar = this.b;
                synchronized (glVar.a) {
                    try {
                        glVar.l = true;
                        glVar.b.quit();
                        if (!glVar.g.isEmpty()) {
                            glVar.i = (MediaFormat) glVar.g.getLast();
                        }
                        ql3 ql3Var = glVar.d;
                        ql3Var.a = 0;
                        ql3Var.b = -1;
                        ql3Var.c = 0;
                        ql3 ql3Var2 = glVar.e;
                        ql3Var2.a = 0;
                        ql3Var2.b = -1;
                        ql3Var2.c = 0;
                        glVar.f.clear();
                        glVar.g.clear();
                        glVar.j = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.e = 2;
            if (this.d) {
                return;
            }
            this.a.release();
            this.d = true;
        } catch (Throwable th2) {
            if (!this.d) {
                this.a.release();
                this.d = true;
            }
            throw th2;
        }
    }

    @Override // yads.qy3
    public final ByteBuffer b(int i) {
        return this.a.getInputBuffer(i);
    }

    @Override // yads.qy3
    public final void a(int i, int i2, long j, int i3) {
        fl flVar = this.c;
        RuntimeException runtimeException = (RuntimeException) flVar.d.getAndSet(null);
        if (runtimeException == null) {
            el elVarB = fl.b();
            elVarB.a = i;
            elVarB.b = i2;
            elVarB.d = j;
            elVarB.e = i3;
            dl dlVar = flVar.c;
            int i4 = u56.a;
            dlVar.obtainMessage(0, elVarB).sendToTarget();
            return;
        }
        throw runtimeException;
    }

    @Override // yads.qy3
    public final void a(int i, ca0 ca0Var, long j) {
        this.c.a(i, ca0Var, j);
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
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        return this.b.a(bufferInfo);
    }

    @Override // yads.qy3
    public final MediaFormat a() {
        MediaFormat mediaFormat;
        gl glVar = this.b;
        synchronized (glVar.a) {
            try {
                mediaFormat = glVar.h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // yads.qy3
    public final void a(final nz3 nz3Var, Handler handler) {
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: tr9
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.a(nz3Var, mediaCodec, j, j2);
            }
        }, handler);
    }

    public final void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        this.b.a(this.a);
        b06.a("configureCodec");
        this.a.configure(mediaFormat, surface, mediaCrypto, 0);
        b06.a();
        fl flVar = this.c;
        if (!flVar.f) {
            flVar.b.start();
            flVar.c = new dl(flVar, flVar.b.getLooper());
            flVar.f = true;
        }
        b06.a("startCodec");
        this.a.start();
        b06.a();
        this.e = 1;
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
