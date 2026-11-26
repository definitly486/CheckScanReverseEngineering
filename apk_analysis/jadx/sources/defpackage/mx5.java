package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class mx5 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("subtitle")
    private final String b;

    @bq7("badge")
    private final jx5 c;

    public mx5(String str, String str2, jx5 jx5Var) {
        this.a = str;
        this.b = str2;
        this.c = jx5Var;
    }

    public final jx5 a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mx5)) {
            return false;
        }
        mx5 mx5Var = (mx5) obj;
        return aa4.e(this.a, mx5Var.a) && aa4.e(this.b, mx5Var.b) && aa4.e(this.c, mx5Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        jx5 jx5Var = this.c;
        return iHashCode2 + (jx5Var != null ? jx5Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        jx5 jx5Var = this.c;
        StringBuilder sbD = ad2.d("OnlineShopBottomResponse(title=", str, ", subtitle=", str2, ", badge=");
        sbD.append(jx5Var);
        sbD.append(")");
        return sbD.toString();
    }
}
