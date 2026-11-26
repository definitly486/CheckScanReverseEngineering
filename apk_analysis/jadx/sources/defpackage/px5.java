package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class px5 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("buttonText")
    private final String b;

    @bq7("buttonUrl")
    private final String c;

    public px5(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof px5)) {
            return false;
        }
        px5 px5Var = (px5) obj;
        return aa4.e(this.a, px5Var.a) && aa4.e(this.b, px5Var.b) && aa4.e(this.c, px5Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("OnlineShopCardButtonResponse(title=", str, ", buttonText=", str2, ", buttonUrl="), this.c, ")");
    }
}
