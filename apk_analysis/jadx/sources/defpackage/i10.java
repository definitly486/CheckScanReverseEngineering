package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i10 {

    @bq7("logoUrl")
    private final String a;

    @bq7("leftText")
    private final String b;

    @bq7("rightText")
    private final String c;

    @bq7("warningText")
    private final String d;

    public i10(String str, String str2, String str3, String str4) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i10)) {
            return false;
        }
        i10 i10Var = (i10) obj;
        return aa4.e(this.a, i10Var.a) && aa4.e(this.b, i10Var.b) && aa4.e(this.c, i10Var.c) && aa4.e(this.d, i10Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return dg.c(ad2.d("BalanceBlockPromotionResponse(logoUrl=", str, ", leftText=", str2, ", rightText="), this.c, ", warningText=", this.d, ")");
    }
}
