package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j32 {
    public final String a;
    public final String b;
    public final g32 c;

    public j32(String str, String str2, g32 g32Var) {
        this.a = str;
        this.b = str2;
        this.c = g32Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j32)) {
            return false;
        }
        j32 j32Var = (j32) obj;
        return aa4.e(this.a, j32Var.a) && aa4.e(this.b, j32Var.b) && this.c == j32Var.c;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        g32 g32Var = this.c;
        return iHashCode2 + (g32Var != null ? g32Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("CouponButton(title=", this.a, ", url=", this.b, ", action=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }
}
