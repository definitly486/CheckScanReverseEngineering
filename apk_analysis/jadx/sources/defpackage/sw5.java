package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class sw5 {

    @bq7("imageUrl")
    private final String a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("buttonTitle")
    private final String d;

    @bq7("buttonUrl")
    private final String e;

    public sw5(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.e;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.c;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sw5)) {
            return false;
        }
        sw5 sw5Var = (sw5) obj;
        return aa4.e(this.a, sw5Var.a) && aa4.e(this.b, sw5Var.b) && aa4.e(this.c, sw5Var.c) && aa4.e(this.d, sw5Var.d) && aa4.e(this.e, sw5Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        StringBuilder sbD = ad2.d("OnboardingCardScreenResponse(imageUrl=", str, ", title=", str2, ", text=");
        kv2.c(sbD, str3, ", buttonTitle=", str4, ", buttonUrl=");
        return me0.d(sbD, str5, ")");
    }
}
