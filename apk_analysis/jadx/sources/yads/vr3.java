package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vr3 {
    public final Integer a;
    public final Integer b;

    public vr3(Integer num, Integer num2) {
        this.a = num;
        this.b = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vr3)) {
            return false;
        }
        vr3 vr3Var = (vr3) obj;
        return defpackage.aa4.e(this.a, vr3Var.a) && defpackage.aa4.e(this.b, vr3Var.b);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "LayoutParamsSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
