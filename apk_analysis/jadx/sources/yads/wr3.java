package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wr3 {
    public final Integer a;
    public final Integer b;

    public wr3(Integer num, Integer num2) {
        this.a = num;
        this.b = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wr3)) {
            return false;
        }
        wr3 wr3Var = (wr3) obj;
        return defpackage.aa4.e(this.a, wr3Var.a) && defpackage.aa4.e(this.b, wr3Var.b);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "LayoutRestriction(minWidth=" + this.a + ", minHeight=" + this.b + ")";
    }
}
