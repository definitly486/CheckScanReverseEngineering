package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class k32 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("url")
    private final String b;

    @bq7("action")
    private final g32 c;

    public k32(String str, String str2, g32 g32Var) {
        this.a = str;
        this.b = str2;
        this.c = g32Var;
    }

    public final g32 a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k32)) {
            return false;
        }
        k32 k32Var = (k32) obj;
        return aa4.e(this.a, k32Var.a) && aa4.e(this.b, k32Var.b) && this.c == k32Var.c;
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
        String str = this.a;
        String str2 = this.b;
        g32 g32Var = this.c;
        StringBuilder sbD = ad2.d("CouponButtonResponse(title=", str, ", url=", str2, ", action=");
        sbD.append(g32Var);
        sbD.append(")");
        return sbD.toString();
    }
}
