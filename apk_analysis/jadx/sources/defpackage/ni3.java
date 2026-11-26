package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ni3 {
    public final String a;
    public final String b;
    public final a c;
    public final a d;
    public final a e;
    public final String f;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
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
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return n2.d("Field(label=", this.a, ", placeholder=", this.b, ")");
        }
    }

    public ni3(String str, String str2, a aVar, a aVar2, a aVar3, String str3) {
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ni3)) {
            return false;
        }
        ni3 ni3Var = (ni3) obj;
        return aa4.e(this.a, ni3Var.a) && aa4.e(this.b, ni3Var.b) && this.c.equals(ni3Var.c) && this.d.equals(ni3Var.d) && this.e.equals(ni3Var.e) && aa4.e(this.f, ni3Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        return this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("FormScreenInfo(pageTitle=", this.a, ", submitButtonText=", this.b, ", nameField=");
        sbD.append(this.c);
        sbD.append(", emailField=");
        sbD.append(this.d);
        sbD.append(", descriptionField=");
        sbD.append(this.e);
        sbD.append(", checkboxText=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
