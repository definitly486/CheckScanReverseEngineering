package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class zm4 extends ys1 implements sx2 {
    public final float d;
    public final float e;
    public final boolean f;

    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    public zm4(vp1 vp1Var, fs2 fs2Var, DisplayMetrics displayMetrics, int i, float f, ts1 ts1Var, rr1 rr1Var) {
        float f2;
        float f3;
        float f4;
        super(i, ts1Var, rr1Var);
        float fB = pq.b(vp1Var.a, displayMetrics, fs2Var);
        float f5 = f + fB;
        this.d = f5;
        int iOrdinal = rr1Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                f4 = i;
                f5 *= 2.0f;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    throw null;
                }
                f2 = i;
                f3 = ts1Var.h;
            }
            this.e = f4 - f5;
            this.f = fB > 0.0f;
        }
        f2 = i;
        f3 = ts1Var.g;
        f4 = f2 - f3;
        this.e = f4 - f5;
        this.f = fB > 0.0f;
    }

    @Override // yads.ys1
    public final Float a(int i) {
        return Float.valueOf(this.e);
    }

    @Override // yads.sx2
    public final boolean b() {
        return this.f;
    }

    @Override // yads.sx2
    public final float c() {
        return this.e;
    }

    @Override // yads.sx2
    public final float a() {
        return this.d;
    }
}
