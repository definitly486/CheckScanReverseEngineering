package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xs1 {
    public final int a;
    public final float b;
    public final ys1 c;
    public final ts1 d;
    public final boolean e;
    public final wr1 f;
    public final rr1 g;

    public xs1(int i, float f, ys1 ys1Var, ts1 ts1Var, boolean z, wr1 wr1Var, rr1 rr1Var) {
        this.a = i;
        this.b = f;
        this.c = ys1Var;
        this.d = ts1Var;
        this.e = z;
        this.f = wr1Var;
        this.g = rr1Var;
    }

    public final float a(int i, int i2) {
        Float fC = this.c.c(i2 > 0 ? i : i + 1);
        if (fC != null) {
            float fFloatValue = fC.floatValue();
            ys1 ys1Var = this.c;
            if (i2 > 0) {
                i--;
            }
            Float fB = ys1Var.b(i);
            if (fB != null) {
                return ((fB.floatValue() + fFloatValue) - this.b) * i2;
            }
        }
        return 0.0f;
    }
}
