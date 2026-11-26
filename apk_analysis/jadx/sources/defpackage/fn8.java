package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fn8 {

    @bq7("textHtml")
    private final String a;

    @bq7("hint")
    private final String b;

    public fn8(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fn8)) {
            return false;
        }
        fn8 fn8Var = (fn8) obj;
        return aa4.e(this.a, fn8Var.a) && aa4.e(this.b, fn8Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n2.d("TaskDisclaimersResponse(textHtml=", this.a, ", hint=", this.b, ")");
    }
}
