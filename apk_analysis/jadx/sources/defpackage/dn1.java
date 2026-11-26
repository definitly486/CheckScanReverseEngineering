package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dn1 {
    public final int a;
    public final String b;
    public final boolean c;
    public final c d;
    public final b06 e;
    public final boolean f;
    public final ew3 g;

    public static final class a {
        public final String a;
        public final b b;

        public a(String str, b bVar) {
            this.a = str;
            this.b = bVar;
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
            b bVar = this.b;
            return iHashCode + (bVar != null ? bVar.hashCode() : 0);
        }

        public final String toString() {
            return "Hike(newValue=" + this.a + ", powercode=" + this.b + ")";
        }
    }

    public static final class b {
        public final Integer a;
        public final String b;
        public final Boolean c;
        public final String d;
        public final String e;

        public b(Integer num, String str, Boolean bool, String str2, String str3) {
            this.a = num;
            this.b = str;
            this.c = bool;
            this.d = str2;
            this.e = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e);
        }

        public final int hashCode() {
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Boolean bool = this.c;
            int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
            String str2 = this.d;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.e;
            return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Powercode(percentIncrease=");
            sb.append(this.a);
            sb.append(", endDate=");
            sb.append(this.b);
            sb.append(", hot=");
            sb.append(this.c);
            sb.append(", title=");
            sb.append(this.d);
            sb.append(", description=");
            return me0.d(sb, this.e, ")");
        }
    }

    public static final class c {
        public final String a;
        public final String b;
        public final a c;

        public c(String str, String str2, a aVar) {
            this.a = str;
            this.b = str2;
            this.c = aVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            a aVar = this.c;
            return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("Profit(title=", this.a, ", value=", this.b, ", hike=");
            sbD.append(this.c);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public dn1(int i, String str, boolean z, c cVar, b06 b06Var, boolean z2, ew3 ew3Var) {
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = cVar;
        this.e = b06Var;
        this.f = z2;
        this.g = ew3Var;
    }

    public static dn1 a(dn1 dn1Var, boolean z) {
        return new dn1(dn1Var.a, dn1Var.b, z, dn1Var.d, dn1Var.e, dn1Var.f, dn1Var.g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dn1)) {
            return false;
        }
        dn1 dn1Var = (dn1) obj;
        return this.a == dn1Var.a && this.b.equals(dn1Var.b) && this.c == dn1Var.c && this.d.equals(dn1Var.d) && this.e.equals(dn1Var.e) && this.f == dn1Var.f && aa4.e(this.g, dn1Var.g);
    }

    public final int hashCode() {
        int iC = tg.c((this.e.hashCode() + ((this.d.hashCode() + tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c)) * 31)) * 31, 31, this.f);
        ew3 ew3Var = this.g;
        return iC + (ew3Var == null ? 0 : ew3Var.hashCode());
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "CollectionItem(id=", ", logo=", this.b, ", isFavorite=");
        sbE.append(this.c);
        sbE.append(", profit=");
        sbE.append(this.d);
        sbE.append(", ordInfo=");
        sbE.append(this.e);
        sbE.append(", isAdult=");
        sbE.append(this.f);
        sbE.append(", hikeFixed=");
        sbE.append(this.g);
        sbE.append(")");
        return sbE.toString();
    }
}
