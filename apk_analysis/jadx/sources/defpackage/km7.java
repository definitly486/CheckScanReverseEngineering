package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class km7 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final a e;
    public final a f;
    public final String g;
    public final em7 h;
    public final b06 i;

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
            return dg.c(ad2.d("ExchangeItem(iconUrl=", this.a, ", topText=", this.b, ", bottomText="), this.c, ", value=", this.d, ")");
        }
    }

    public km7(String str, String str2, String str3, String str4, a aVar, a aVar2, String str5, em7 em7Var, b06 b06Var) {
        m2.e(str, str2, str4, str5);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = aVar;
        this.f = aVar2;
        this.g = str5;
        this.h = em7Var;
        this.i = b06Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof km7)) {
            return false;
        }
        km7 km7Var = (km7) obj;
        return aa4.e(this.a, km7Var.a) && aa4.e(this.b, km7Var.b) && aa4.e(this.c, km7Var.c) && aa4.e(this.d, km7Var.d) && this.e.equals(km7Var.e) && this.f.equals(km7Var.f) && aa4.e(this.g, km7Var.g) && this.h.equals(km7Var.h) && aa4.e(this.i, km7Var.i);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (this.h.hashCode() + zg.b((this.f.hashCode() + ((this.e.hashCode() + zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d)) * 31)) * 31, 31, this.g)) * 31;
        b06 b06Var = this.i;
        return iHashCode + (b06Var != null ? b06Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("SelectPromocodeSheet(logoUrl=", this.a, ", title=", this.b, ", hintDescription=");
        kv2.c(sbD, this.c, ", description=", this.d, ", takenFromUser=");
        sbD.append(this.e);
        sbD.append(", givenToUser=");
        sbD.append(this.f);
        sbD.append(", buttonText=");
        sbD.append(this.g);
        sbD.append(", approveSheet=");
        sbD.append(this.h);
        sbD.append(", ordInfo=");
        sbD.append(this.i);
        sbD.append(")");
        return sbD.toString();
    }
}
