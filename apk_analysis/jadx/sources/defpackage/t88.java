package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class t88 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final a d;
    public final b e;

    public static final class a {
        public final boolean a;
        public final String b;
        public final String c;
        public final String d;
        public final String e;
        public final String f;
        public final boolean g;

        public a(boolean z, String str, String str2, String str3, String str4, String str5, boolean z2) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            this.a = z;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.f = str5;
            this.g = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && this.g == aVar.g;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.g) + zg.b(zg.b(zg.b(zg.b(zg.b(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BannerBlock(isRegRequired=");
            sb.append(this.a);
            sb.append(", titleColor=");
            sb.append(this.b);
            sb.append(", deeplink=");
            kv2.c(sb, this.c, ", background=", this.d, ", icon=");
            kv2.c(sb, this.e, ", title=", this.f, ", isArrowVisible=");
            return dh.e(sb, this.g, ")");
        }
    }

    public static final class b {
        public final String a;
        public final String b;

        public b(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Bottom(imageUrl=", this.a, ", text=", this.b, ")");
        }
    }

    public t88(String str, String str2, String str3, a aVar, b bVar) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t88)) {
            return false;
        }
        t88 t88Var = (t88) obj;
        return aa4.e(this.a, t88Var.a) && aa4.e(this.b, t88Var.b) && aa4.e(this.c, t88Var.c) && this.d.equals(t88Var.d) && aa4.e(this.e, t88Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.d + this.c + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        b bVar = this.e;
        return iHashCode + (bVar != null ? bVar.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("StepActionViewModel(title=", this.a, ", subtitle=", this.b, ", eventPath=");
        sbD.append(this.c);
        sbD.append(", bannerBlock=");
        sbD.append(this.d);
        sbD.append(", bottom=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
