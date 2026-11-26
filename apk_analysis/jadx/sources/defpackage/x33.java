package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x33 {

    @bq7("dateFrom")
    private final String a;

    @bq7("dateTo")
    private final String b;

    @bq7("email")
    private final String c;

    @bq7("format")
    private final String d;

    public x33(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x33)) {
            return false;
        }
        x33 x33Var = (x33) obj;
        return aa4.e(this.a, x33Var.a) && aa4.e(this.b, x33Var.b) && aa4.e(this.c, x33Var.c) && aa4.e(this.d, x33Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return dg.c(ad2.d("ExportResponse(dateFrom=", str, ", dateTo=", str2, ", email="), this.c, ", format=", this.d, ")");
    }
}
