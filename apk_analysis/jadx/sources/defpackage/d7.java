package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d7 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final a f;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str.getClass();
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
            return aa4.e(this.a, aVar.a) && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("ExpireBottom(expireText=", this.a, ", expireButtonText=", this.b, ")");
        }
    }

    public d7(String str, String str2, String str3, String str4, String str5, a aVar) {
        m2.e(str, str2, str4, str5);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d7)) {
            return false;
        }
        d7 d7Var = (d7) obj;
        return aa4.e(this.a, d7Var.a) && aa4.e(this.b, d7Var.b) && aa4.e(this.c, d7Var.c) && aa4.e(this.d, d7Var.d) && aa4.e(this.e, d7Var.e) && aa4.e(this.f, d7Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.e + this.c + this.d + this.f;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iB2 = zg.b(zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31, this.e);
        a aVar = this.f;
        return iB2 + (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ActiveSubscriptionBannerViewModel(title=", this.a, ", description=", this.b, ", goalText=");
        kv2.c(sbD, this.c, ", deeplink=", this.d, ", logoUrl=");
        sbD.append(this.e);
        sbD.append(", bottom=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
