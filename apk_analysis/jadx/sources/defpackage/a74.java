package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a74 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Long f;
    public final a g;

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
            return n2.d("Button(title=", this.a, ", url=", this.b, ")");
        }
    }

    public a74(int i, String str, String str2, String str3, String str4, Long l, a aVar) {
        m2.e(str, str2, str3, str4);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = l;
        this.g = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a74)) {
            return false;
        }
        a74 a74Var = (a74) obj;
        return this.a == a74Var.a && aa4.e(this.b, a74Var.b) && aa4.e(this.c, a74Var.c) && aa4.e(this.d, a74Var.d) && aa4.e(this.e, a74Var.e) && aa4.e(this.f, a74Var.f) && this.g.equals(a74Var.g);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.g + this.e + this.f;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        Long l = this.f;
        return this.g.hashCode() + ((iB + (l == null ? 0 : l.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "InsuranceShowcaseCardViewModel(id=", ", logoUrl=", this.b, ", title=");
        kv2.c(sbE, this.c, ", subtitle=", this.d, ", badgeUrl=");
        sbE.append(this.e);
        sbE.append(", dateDeadline=");
        sbE.append(this.f);
        sbE.append(", button=");
        sbE.append(this.g);
        sbE.append(")");
        return sbE.toString();
    }
}
