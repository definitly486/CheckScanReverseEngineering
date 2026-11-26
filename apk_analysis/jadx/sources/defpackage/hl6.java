package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hl6 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final a e;
    public final vm6 f;
    public final vm6 g;
    public final kw2 h;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public a(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            return dg.c(ad2.d("Badge(text=", this.a, ", textColor=", this.b, ", backgroundColor="), this.c, ", iconColor=", this.d, ")");
        }
    }

    public hl6(String str, String str2, String str3, String str4, a aVar, vm6 vm6Var, vm6 vm6Var2, kw2 kw2Var) {
        x7.b(str, str2, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = aVar;
        this.f = vm6Var;
        this.g = vm6Var2;
        this.h = kw2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hl6)) {
            return false;
        }
        hl6 hl6Var = (hl6) obj;
        return aa4.e(this.a, hl6Var.a) && aa4.e(this.b, hl6Var.b) && aa4.e(this.c, hl6Var.c) && aa4.e(this.d, hl6Var.d) && aa4.e(this.e, hl6Var.e) && aa4.e(this.f, hl6Var.f) && aa4.e(this.g, hl6Var.g) && aa4.e(this.h, hl6Var.h);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d + this.f + this.g + this.e + this.h;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iB2 = zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        a aVar = this.e;
        int iHashCode = (iB2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        vm6 vm6Var = this.f;
        int iHashCode2 = (iHashCode + (vm6Var == null ? 0 : vm6Var.hashCode())) * 31;
        vm6 vm6Var2 = this.g;
        int iHashCode3 = (iHashCode2 + (vm6Var2 == null ? 0 : vm6Var2.hashCode())) * 31;
        kw2 kw2Var = this.h;
        return iHashCode3 + (kw2Var != null ? kw2Var.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return (byte) -128;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ProfileHeaderViewModel(photoUserUrl=", this.a, ", userName=", this.b, ", email=");
        kv2.c(sbD, this.c, ", phone=", this.d, ", badgeEdit=");
        sbD.append(this.e);
        sbD.append(", activeSubscriptionBadge=");
        sbD.append(this.f);
        sbD.append(", notActiveSubscriptionBadge=");
        sbD.append(this.g);
        sbD.append(", emailWarningBanner=");
        sbD.append(this.h);
        sbD.append(")");
        return sbD.toString();
    }
}
