package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vt4 extends ys1 implements sx2 {
    public final float d;
    public final float e;
    public final boolean f;

    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    public vt4(qq1 qq1Var, fs2 fs2Var, int i, ts1 ts1Var, rr1 rr1Var) {
        float f;
        float f2;
        float f3;
        super(i, ts1Var, rr1Var);
        double dDoubleValue = ((Number) qq1Var.a.a.a(fs2Var)).doubleValue();
        float f4 = (float) ((((double) i) * dDoubleValue) / 100.0d);
        this.d = f4;
        int iOrdinal = rr1Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                f3 = (i - f4) / 2.0f;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    throw null;
                }
                f = i;
                f2 = ts1Var.h;
            }
            this.e = f3;
            this.f = dDoubleValue < 100.0d;
        }
        f = i;
        f2 = ts1Var.g;
        f3 = (f - f2) - f4;
        this.e = f3;
        this.f = dDoubleValue < 100.0d;
    }

    @Override // yads.ys1
    public final Float a(int i) {
        return Float.valueOf(this.d);
    }

    @Override // yads.sx2
    public final boolean b() {
        return this.f;
    }

    @Override // yads.sx2
    public final float c() {
        return this.d;
    }

    @Override // yads.sx2
    public final float a() {
        return this.e;
    }
}
