package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ue8 {

    @bq7("name")
    private final String a;

    @bq7("email")
    private final String b;

    @bq7("description")
    private final String c;

    public ue8(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ue8)) {
            return false;
        }
        ue8 ue8Var = (ue8) obj;
        return aa4.e(this.a, ue8Var.a) && aa4.e(this.b, ue8Var.b) && aa4.e(this.c, ue8Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("SupportFormRequestBody(name=", str, ", email=", str2, ", description="), this.c, ")");
    }
}
