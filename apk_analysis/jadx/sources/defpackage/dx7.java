package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class dx7 {

    @bq7("phone")
    private final String a;

    @bq7("destinationType")
    private final am2 b;

    @bq7("code")
    private final String c;

    public dx7(String str, am2 am2Var, String str2) {
        str.getClass();
        am2Var.getClass();
        this.a = str;
        this.b = am2Var;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dx7)) {
            return false;
        }
        dx7 dx7Var = (dx7) obj;
        return aa4.e(this.a, dx7Var.a) && this.b == dx7Var.b && aa4.e(this.c, dx7Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String str = this.a;
        am2 am2Var = this.b;
        String str2 = this.c;
        StringBuilder sb = new StringBuilder("SignInConfirmRequestBody(phone=");
        sb.append(str);
        sb.append(", destinationType=");
        sb.append(am2Var);
        sb.append(", code=");
        return me0.d(sb, str2, ")");
    }

    public /* synthetic */ dx7(String str, am2 am2Var, String str2, int i, jh2 jh2Var) {
        this(str, am2Var, (i & 4) != 0 ? null : str2);
    }
}
