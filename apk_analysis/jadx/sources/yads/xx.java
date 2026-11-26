package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class xx extends gs {
    public final mi0 n;
    public final os4 o;
    public long p;
    public wx q;
    public long r;

    public xx() {
        super(6);
        this.n = new mi0(1);
        this.o = new os4();
    }

    @Override // yads.gs
    public final void a(long j, long j2) {
        while (!d() && this.r < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + j) {
            this.n.b();
            a03 a03Var = this.c;
            float[] fArr = null;
            a03Var.a = null;
            a03Var.b = null;
            if (a(a03Var, this.n, 0) != -4 || this.n.b(4)) {
                return;
            }
            mi0 mi0Var = this.n;
            this.r = mi0Var.f;
            if (this.q != null && !mi0Var.b(Integer.MIN_VALUE)) {
                this.n.c();
                ByteBuffer byteBuffer = this.n.d;
                int i = u56.a;
                if (byteBuffer.remaining() == 16) {
                    os4 os4Var = this.o;
                    byte[] bArrArray = byteBuffer.array();
                    int iLimit = byteBuffer.limit();
                    os4Var.a = bArrArray;
                    os4Var.c = iLimit;
                    os4Var.b = 0;
                    this.o.e(byteBuffer.arrayOffset() + 4);
                    fArr = new float[3];
                    for (int i2 = 0; i2 < 3; i2++) {
                        fArr[i2] = Float.intBitsToFloat(this.o.c());
                    }
                }
                if (fArr != null) {
                    this.q.a(this.r - this.p, fArr);
                }
            }
        }
    }

    @Override // yads.gs
    public final String c() {
        return "CameraMotionRenderer";
    }

    @Override // yads.gs
    public final boolean e() {
        return d();
    }

    @Override // yads.gs
    public final boolean f() {
        return true;
    }

    @Override // yads.gs
    public final void g() {
        wx wxVar = this.q;
        if (wxVar != null) {
            wxVar.a();
        }
    }

    @Override // yads.gs, yads.tw4
    public final void a(int i, Object obj) {
        if (i == 8) {
            this.q = (wx) obj;
        }
    }

    @Override // yads.gs
    public final void a(vz2[] vz2VarArr, long j, long j2) {
        this.p = j2;
    }

    @Override // yads.gs
    public final void a(long j, boolean z) {
        this.r = Long.MIN_VALUE;
        wx wxVar = this.q;
        if (wxVar != null) {
            wxVar.a();
        }
    }

    @Override // yads.gs
    public final int a(vz2 vz2Var) {
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(vz2Var.m)) {
            return gs.a(4, 0, 0);
        }
        return gs.a(0, 0, 0);
    }
}
