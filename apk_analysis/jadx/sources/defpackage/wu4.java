package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wu4 {
    public final xu4 a;
    public final h3 b;
    public final String c;
    public final a d;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("ErrorMessage(title=", this.a, ", description=", this.b, ")");
        }
    }

    public wu4(xu4 xu4Var, h3 h3Var, String str, a aVar) {
        xu4Var.getClass();
        this.a = xu4Var;
        this.b = h3Var;
        this.c = str;
        this.d = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wu4)) {
            return false;
        }
        wu4 wu4Var = (wu4) obj;
        return this.a == wu4Var.a && aa4.e(this.b, wu4Var.b) && aa4.e(this.c, wu4Var.c) && aa4.e(this.d, wu4Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        h3 h3Var = this.b;
        int iHashCode2 = (iHashCode + (h3Var == null ? 0 : h3Var.hashCode())) * 31;
        String str = this.c;
        int iC = tg.c((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31, 31, false);
        a aVar = this.d;
        return iC + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogInResponse(result=" + this.a + ", accountData=" + this.b + ", token=" + this.c + ", isPhoneValid=false, errorMessage=" + this.d + ")";
    }
}
