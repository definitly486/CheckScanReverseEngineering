package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class fq6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final b a;

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean b;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
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
            return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final a c;

        @bq7("logoUrl")
        private final String d;

        @bq7("code")
        private final String e;

        public b(String str, String str2, a aVar, String str3, String str4) {
            str.getClass();
            str2.getClass();
            aVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = aVar;
            this.d = str3;
            this.e = str4;
        }

        public final String a() {
            return this.e;
        }

        public final String b() {
            return this.d;
        }

        public final a c() {
            return this.c;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.a;
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
            int iHashCode = (this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31;
            String str = this.d;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.e;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            String str3 = this.d;
            String str4 = this.e;
            StringBuilder sbD = ad2.d("ContentResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(aVar);
            sbD.append(", logoUrl=");
            sbD.append(str3);
            sbD.append(", code=");
            return me0.d(sbD, str4, ")");
        }
    }

    public fq6(b bVar, boolean z) {
        bVar.getClass();
        this.a = bVar;
        this.b = z;
    }

    public final jm7 a() {
        if (!this.b) {
            return new jm7.a(this.a.b(), this.a.e(), this.a.d(), this.a.c().a());
        }
        String strB = this.a.b();
        if (strB == null) {
            strB = "";
        }
        String str = strB;
        String strD = this.a.d();
        String strA = this.a.a();
        strA.getClass();
        return new jm7.b(str, this.a.e(), strD, strA, this.a.c().a(), this.a.c().b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fq6)) {
            return false;
        }
        fq6 fq6Var = (fq6) obj;
        return aa4.e(this.a, fq6Var.a) && this.b == fq6Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PromocodeExchangeResultResponse(content=" + this.a + ", success=" + this.b + ")";
    }
}
