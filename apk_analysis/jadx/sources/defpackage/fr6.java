package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fr6 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final a g;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;

        public a(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return me0.d(ad2.d("Badge(title=", this.a, ", textColor=", this.b, ", badgeColor="), this.c, ")");
        }
    }

    public fr6(int i, String str, String str2, String str3, String str4, String str5, a aVar) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fr6)) {
            return false;
        }
        fr6 fr6Var = (fr6) obj;
        return this.a == fr6Var.a && aa4.e(this.b, fr6Var.b) && aa4.e(this.c, fr6Var.c) && aa4.e(this.d, fr6Var.d) && aa4.e(this.e, fr6Var.e) && aa4.e(this.f, fr6Var.f) && aa4.e(this.g, fr6Var.g);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.g;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        a aVar = this.g;
        return iB + (aVar == null ? 0 : aVar.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "PromocodeViewModel(id=", ", logoUrl=", this.b, ", shopName=");
        kv2.c(sbE, this.c, ", category=", this.d, ", discount=");
        kv2.c(sbE, this.e, ", subCategory=", this.f, ", badge=");
        sbE.append(this.g);
        sbE.append(")");
        return sbE.toString();
    }
}
