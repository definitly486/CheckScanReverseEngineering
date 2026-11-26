package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ap6 implements lp6 {
    public final String a;
    public final String b;
    public final a c;

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
            return n2.d("FullTerms(title=", this.a, ", htmlText=", this.b, ")");
        }
    }

    public ap6(String str, String str2, a aVar) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ap6)) {
            return false;
        }
        ap6 ap6Var = (ap6) obj;
        return aa4.e(this.a, ap6Var.a) && aa4.e(this.b, ap6Var.b) && aa4.e(this.c, ap6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        a aVar = this.c;
        return this.a + this.b + (aVar != null ? aVar.a : null) + (aVar != null ? aVar.b : null);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.c;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PromoSelectCardMotivationViewModel(title=", this.a, ", description=", this.b, ", fullTerms=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }
}
