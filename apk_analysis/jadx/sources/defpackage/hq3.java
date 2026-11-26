package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hq3 {
    public final String a;
    public final String b;
    public final String c;
    public final a d;
    public final a e;

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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("Button(text=", this.a, ", url=", this.b, ")");
        }
    }

    public hq3(String str, String str2, String str3, a aVar, a aVar2) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = aVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hq3)) {
            return false;
        }
        hq3 hq3Var = (hq3) obj;
        return aa4.e(this.a, hq3Var.a) && aa4.e(this.b, hq3Var.b) && aa4.e(this.c, hq3Var.c) && aa4.e(this.d, hq3Var.d) && aa4.e(this.e, hq3Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        a aVar2 = this.e;
        return iHashCode + (aVar2 != null ? aVar2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("GiftInfo(title=", this.a, ", text=", this.b, ", logoUrl=");
        sbD.append(this.c);
        sbD.append(", mainButton=");
        sbD.append(this.d);
        sbD.append(", secondaryButton=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
