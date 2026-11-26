package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ys1 {
    public final int a;
    public final ts1 b;
    public final rr1 c;

    public ys1(int i, ts1 ts1Var, rr1 rr1Var) {
        this.a = i;
        this.b = ts1Var;
        this.c = rr1Var;
    }

    public abstract Float a(int i);

    public final Float b(int i) {
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 0) {
            Float fA = a(i);
            if (fA != null) {
                return Float.valueOf((this.a - this.b.g) - fA.floatValue());
            }
        } else {
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    return Float.valueOf(this.b.h);
                }
                defpackage.me0.e();
                return null;
            }
            Float fA2 = a(i);
            if (fA2 != null) {
                return Float.valueOf((this.a - fA2.floatValue()) / 2.0f);
            }
        }
        return null;
    }

    public final Float c(int i) {
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 0) {
            return Float.valueOf(this.b.g);
        }
        if (iOrdinal == 1) {
            Float fA = a(i);
            if (fA != null) {
                return Float.valueOf((this.a - fA.floatValue()) / 2.0f);
            }
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return null;
            }
            Float fA2 = a(i);
            if (fA2 != null) {
                return Float.valueOf((this.a - this.b.h) - fA2.floatValue());
            }
        }
        return null;
    }
}
