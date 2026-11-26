package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ve8 {

    @bq7("pageTitle")
    private final String a;

    @bq7("submitButtonText")
    private final String b;

    @bq7("fields")
    private final ne8 c;

    public ve8(String str, String str2, ne8 ne8Var) {
        str2.getClass();
        ne8Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = ne8Var;
    }

    public final ne8 a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ve8)) {
            return false;
        }
        ve8 ve8Var = (ve8) obj;
        return aa4.e(this.a, ve8Var.a) && aa4.e(this.b, ve8Var.b) && aa4.e(this.c, ve8Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        return this.c.hashCode() + zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        ne8 ne8Var = this.c;
        StringBuilder sbD = ad2.d("SupportFormResponse(pageTitle=", str, ", submitButtonText=", str2, ", fields=");
        sbD.append(ne8Var);
        sbD.append(")");
        return sbD.toString();
    }
}
