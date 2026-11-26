package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class er6 implements cs0 {
    public final b a;
    public final int b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;

    public static final class a {
        public String a;
        public String b;
        public String c;

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
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("Badge(backgroundColor=", str, ", text=", str2, ", textColor="), this.c, ")");
        }
    }

    public static final class b {
        public a a;
        public String b;
        public String c;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            a aVar = this.a;
            String str = this.b;
            String str2 = this.c;
            StringBuilder sb = new StringBuilder("Bottom(badge=");
            sb.append(aVar);
            sb.append(", subtitle=");
            sb.append(str);
            sb.append(", title=");
            return me0.d(sb, str2, ")");
        }
    }

    public er6(b bVar, int i, boolean z, String str, String str2, String str3) {
        this.a = bVar;
        this.b = i;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public static er6 d(er6 er6Var, boolean z) {
        b bVar = er6Var.a;
        int i = er6Var.b;
        String str = er6Var.d;
        String str2 = er6Var.e;
        String str3 = er6Var.f;
        er6Var.getClass();
        return new er6(bVar, i, z, str, str2, str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof er6)) {
            return false;
        }
        er6 er6Var = (er6) obj;
        return aa4.e(this.a, er6Var.a) && this.b == er6Var.b && this.c == er6Var.c && aa4.e(this.d, er6Var.d) && aa4.e(this.e, er6Var.e) && aa4.e(this.f, er6Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Boolean.valueOf(this.c);
    }

    public final int hashCode() {
        b bVar = this.a;
        int iC = tg.c(ej0.b(this.b, (bVar == null ? 0 : bVar.hashCode()) * 31, 31), 31, this.c);
        String str = this.d;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PromocodeViewModel(bottom=");
        sb.append(this.a);
        sb.append(", id=");
        sb.append(this.b);
        sb.append(", isFavorite=");
        sb.append(this.c);
        sb.append(", logoUrl=");
        sb.append(this.d);
        sb.append(", subtitle=");
        return dg.c(sb, this.e, ", title=", this.f, ")");
    }
}
