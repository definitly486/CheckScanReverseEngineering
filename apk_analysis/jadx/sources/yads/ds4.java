package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ds4 {
    public final ds1 a;
    public final ur1 b;

    public ds4(ds1 ds1Var, ur1 ur1Var) {
        this.a = ds1Var;
        this.b = ur1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ds4)) {
            return false;
        }
        ds4 ds4Var = (ds4) obj;
        return defpackage.aa4.e(this.a, ds4Var.a) && defpackage.aa4.e(this.b, ds4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "IndicatorData(indicator=" + this.a + ", pagerDiv=" + this.b + ")";
    }
}
