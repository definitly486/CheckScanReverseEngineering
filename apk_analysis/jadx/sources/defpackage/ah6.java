package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ah6 {

    @bq7("isAffiliated")
    private final boolean a;

    @bq7("sign")
    private final String b;

    @bq7("value")
    private final Double c;

    @bq7("logoUrl")
    private final String d;

    public ah6(boolean z, String str, Double d, String str2) {
        str2.getClass();
        this.a = z;
        this.b = str;
        this.c = d;
        this.d = str2;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    public final Double c() {
        return this.c;
    }

    public final boolean d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ah6)) {
            return false;
        }
        ah6 ah6Var = (ah6) obj;
        return this.a == ah6Var.a && aa4.e(this.b, ah6Var.b) && aa4.e(this.c, ah6Var.c) && aa4.e(this.d, ah6Var.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Double d = this.c;
        return this.d.hashCode() + ((iHashCode2 + (d != null ? d.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ProductCashbackInfo(isAffiliated=" + this.a + ", sign=" + this.b + ", value=" + this.c + ", logoUrl=" + this.d + ")";
    }
}
