package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wa8 {

    @bq7("text")
    private final String a;

    @bq7("logoUrl")
    private final String b;

    @bq7("textColor")
    private final String c;

    @bq7("color")
    private final String d;

    public wa8(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wa8)) {
            return false;
        }
        wa8 wa8Var = (wa8) obj;
        return aa4.e(this.a, wa8Var.a) && aa4.e(this.b, wa8Var.b) && aa4.e(this.c, wa8Var.c) && aa4.e(this.d, wa8Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return dg.c(ad2.d("StrokeResponse(text=", str, ", logoUrl=", str2, ", textColor="), this.c, ", color=", this.d, ")");
    }
}
