package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class l6 {

    @bq7("code")
    private final String a;

    @bq7("source")
    private final String b;

    public l6(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l6)) {
            return false;
        }
        l6 l6Var = (l6) obj;
        return aa4.e(this.a, l6Var.a) && aa4.e(this.b, l6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("ActivatePromocodeBody(code=", this.a, ", source=", this.b, ")");
    }
}
