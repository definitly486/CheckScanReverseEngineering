package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ox5 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("url")
    private final String b;

    public ox5(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ox5)) {
            return false;
        }
        ox5 ox5Var = (ox5) obj;
        return aa4.e(this.a, ox5Var.a) && aa4.e(this.b, ox5Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n2.d("OnlineShopButtonResponse(title=", this.a, ", url=", this.b, ")");
    }
}
