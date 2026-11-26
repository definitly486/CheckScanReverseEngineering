package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vm6 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final a f;
    public final String g;

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
            return me0.d(ad2.d("AdditionalInfo(leftText=", this.a, ", rightText=", this.b, ", iconUrl="), this.c, ")");
        }
    }

    public vm6(String str, String str2, String str3, String str4, String str5, a aVar, String str6) {
        m2.e(str, str2, str3, str6);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = aVar;
        this.g = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vm6)) {
            return false;
        }
        vm6 vm6Var = (vm6) obj;
        return aa4.e(this.a, vm6Var.a) && aa4.e(this.b, vm6Var.b) && aa4.e(this.c, vm6Var.c) && aa4.e(this.d, vm6Var.d) && aa4.e(this.e, vm6Var.e) && aa4.e(this.f, vm6Var.f) && aa4.e(this.g, vm6Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        a aVar = this.f;
        return this.g.hashCode() + ((iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ProfileSubscriptionBadge(imageUrl=", this.a, ", primaryText=", this.b, ", secondaryText=");
        kv2.c(sbD, this.c, ", buttonText=", this.d, ", url=");
        sbD.append(this.e);
        sbD.append(", additionalInfo=");
        sbD.append(this.f);
        sbD.append(", background=");
        return me0.d(sbD, this.g, ")");
    }
}
