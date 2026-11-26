package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class r6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("subtitle")
    private final String c;

    @bq7("imageUrl")
    private final String d;

    @bq7("mainButton")
    private final a e;

    @bq7("secondaryButton")
    private final a f;

    @bq7("rewardKopecks")
    private final long g;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
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
            return n2.d("ButtonResponse(text=", this.a, ", url=", this.b, ")");
        }
    }

    public r6(String str, String str2, String str3, String str4, a aVar, a aVar2, long j) {
        str.getClass();
        str3.getClass();
        str4.getClass();
        aVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = aVar;
        this.f = aVar2;
        this.g = j;
    }

    public final String a() {
        return this.d;
    }

    public final a b() {
        return this.e;
    }

    public final long c() {
        return this.g;
    }

    public final a d() {
        return this.f;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r6)) {
            return false;
        }
        r6 r6Var = (r6) obj;
        return aa4.e(this.a, r6Var.a) && aa4.e(this.b, r6Var.b) && aa4.e(this.c, r6Var.c) && aa4.e(this.d, r6Var.d) && aa4.e(this.e, r6Var.e) && aa4.e(this.f, r6Var.f) && this.g == r6Var.g;
    }

    public final String f() {
        return this.b;
    }

    public final String g() {
        return this.a;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (this.e.hashCode() + zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d)) * 31;
        a aVar = this.f;
        return Long.hashCode(this.g) + ((iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        a aVar = this.e;
        a aVar2 = this.f;
        long j = this.g;
        StringBuilder sbD = ad2.d("ActivateSettingsPromocodeSuccessResponse(title=", str, ", text=", str2, ", subtitle=");
        kv2.c(sbD, str3, ", imageUrl=", str4, ", mainButton=");
        sbD.append(aVar);
        sbD.append(", secondaryButton=");
        sbD.append(aVar2);
        sbD.append(", rewardKopecks=");
        return k2.b(j, ")", sbD);
    }
}
