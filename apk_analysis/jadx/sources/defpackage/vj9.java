package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vj9 implements hk9 {
    public final String a;
    public final String b;
    public final String c;
    public final a d;
    public final a e;
    public final pw7 f;

    public static final class a {
        public final String a;
        public final wi9 b;

        public a(wi9 wi9Var, String str) {
            str.getClass();
            wi9Var.getClass();
            this.a = str;
            this.b = wi9Var;
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
            return "Button(title=" + this.a + ", event=" + this.b + ")";
        }
    }

    public vj9(String str, String str2, String str3, a aVar, a aVar2, pw7 pw7Var) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = aVar2;
        this.f = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vj9)) {
            return false;
        }
        vj9 vj9Var = (vj9) obj;
        return aa4.e(this.a, vj9Var.a) && aa4.e(this.b, vj9Var.b) && aa4.e(this.c, vj9Var.c) && aa4.e(this.d, vj9Var.d) && aa4.e(this.e, vj9Var.e) && this.f.equals(vj9Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        a aVar2 = this.e;
        return this.f.hashCode() + ((iHashCode + (aVar2 != null ? aVar2.hashCode() : 0)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.b, this.c);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("WithdrawalMiniLogoTransferBannerViewModel(logoUrl=", this.a, ", title=", this.b, ", description=");
        sbD.append(this.c);
        sbD.append(", primaryButton=");
        sbD.append(this.d);
        sbD.append(", secondaryButton=");
        sbD.append(this.e);
        sbD.append(", analytics=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
