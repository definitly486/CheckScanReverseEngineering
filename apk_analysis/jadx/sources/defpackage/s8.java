package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class s8 {

    @bq7("email")
    private final String a;

    @bq7("code")
    private final String b;

    public s8(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s8)) {
            return false;
        }
        s8 s8Var = (s8) obj;
        return aa4.e(this.a, s8Var.a) && aa4.e(this.b, s8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("AddEmailConfirmRequestBody(email=", this.a, ", code=", this.b, ")");
    }
}
