package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xx3 {
    public final yx3 a;
    public final yx3 b;

    public xx3(yx3 yx3Var, yx3 yx3Var2) {
        this.a = yx3Var;
        this.b = yx3Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xx3)) {
            return false;
        }
        xx3 xx3Var = (xx3) obj;
        return defpackage.aa4.e(this.a, xx3Var.a) && defpackage.aa4.e(this.b, xx3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MeasuredSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
