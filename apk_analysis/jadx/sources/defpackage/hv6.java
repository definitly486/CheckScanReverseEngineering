package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hv6 {

    @bq7("datetime")
    private final String a;

    @bq7("fd")
    private final String b;

    @bq7("fn")
    private final String c;

    @bq7("fpd")
    private final String d;

    @bq7("totalSum")
    private final String e;

    @bq7("qr_code")
    private final String f;

    @bq7("operationType")
    private final String g;

    @bq7("experimentTestGroup")
    private int h;

    @bq7("from")
    private final gv6 i;

    public hv6(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, gv6 gv6Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = i;
        this.i = gv6Var;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.f;
    }

    public final String c() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hv6)) {
            return false;
        }
        hv6 hv6Var = (hv6) obj;
        return aa4.e(this.a, hv6Var.a) && aa4.e(this.b, hv6Var.b) && aa4.e(this.c, hv6Var.c) && aa4.e(this.d, hv6Var.d) && aa4.e(this.e, hv6Var.e) && aa4.e(this.f, hv6Var.f) && aa4.e(this.g, hv6Var.g) && this.h == hv6Var.h && aa4.e(this.i, hv6Var.i);
    }

    public final int hashCode() {
        int iB = ej0.b(this.h, zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31);
        gv6 gv6Var = this.i;
        return iB + (gv6Var == null ? 0 : gv6Var.hashCode());
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        int i = this.h;
        gv6 gv6Var = this.i;
        StringBuilder sbD = ad2.d("QrInfoRequest(datetime=", str, ", fd=", str2, ", fn=");
        kv2.c(sbD, str3, ", fpd=", str4, ", totalSum=");
        kv2.c(sbD, str5, ", qrCode=", str6, ", operationType=");
        o2.e(sbD, str7, ", experimentTestGroup=", i, ", from=");
        sbD.append(gv6Var);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ hv6(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, gv6 gv6Var, int i2, jh2 jh2Var) {
        this(str, str2, str3, str4, str5, str6, str7, (i2 & 128) != 0 ? 1 : i, (i2 & 256) != 0 ? null : gv6Var);
    }
}
