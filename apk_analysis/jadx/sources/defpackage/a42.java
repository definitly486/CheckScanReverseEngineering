package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class a42 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("iconUrl")
    private final String b;

    @bq7("backgroundColor")
    private final String c;

    @bq7("name")
    private final String d;

    @bq7("footer")
    private final String e;

    public a42(long j, String str, String str2, String str3, String str4) {
        x7.b(str, str3, str4);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final ao1 a() {
        return new ao1(this.a, tf6.Coupon, this.b, this.c, this.d, this.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a42)) {
            return false;
        }
        a42 a42Var = (a42) obj;
        return this.a == a42Var.a && aa4.e(this.b, a42Var.b) && aa4.e(this.c, a42Var.c) && aa4.e(this.d, a42Var.d) && aa4.e(this.e, a42Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(Long.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return this.e.hashCode() + zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        StringBuilder sbD = ah.d(j, "CouponResponse(id=", ", iconUrl=", str);
        kv2.c(sbD, ", backgroundColor=", str2, ", name=", str3);
        return kh.c(sbD, ", footer=", str4, ")");
    }
}
