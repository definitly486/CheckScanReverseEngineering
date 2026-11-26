package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class s99 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a b;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("mainButton")
        private final C0330a d;

        @bq7("secondButton")
        private final C0330a e;

        /* JADX INFO: renamed from: s99$a$a, reason: collision with other inner class name */
        public static final class C0330a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            public C0330a(String str, String str2) {
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
                if (!(obj instanceof C0330a)) {
                    return false;
                }
                C0330a c0330a = (C0330a) obj;
                return aa4.e(this.a, c0330a.a) && aa4.e(this.b, c0330a.b);
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

        public a(String str, String str2, String str3, C0330a c0330a, C0330a c0330a2) {
            str.getClass();
            str2.getClass();
            c0330a.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = c0330a;
            this.e = c0330a2;
        }

        public final String a() {
            return this.c;
        }

        public final C0330a b() {
            return this.d;
        }

        public final C0330a c() {
            return this.e;
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            C0330a c0330a = this.e;
            return iHashCode + (c0330a != null ? c0330a.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            C0330a c0330a = this.d;
            C0330a c0330a2 = this.e;
            StringBuilder sbD = ad2.d("ContentResponse(title=", str, ", text=", str2, ", logoUrl=");
            sbD.append(str3);
            sbD.append(", mainButton=");
            sbD.append(c0330a);
            sbD.append(", secondButton=");
            sbD.append(c0330a2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public s99(boolean z, a aVar) {
        aVar.getClass();
        this.a = z;
        this.b = aVar;
    }

    public final a40 a() {
        String strE = this.b.e();
        String strD = this.b.d();
        String strA = this.b.a();
        a40.a aVar = new a40.a(this.b.b().a(), this.b.b().b());
        a.C0330a c0330aC = this.b.c();
        return new a40(strE, strD, strA, aVar, c0330aC != null ? new a40.a(c0330aC.a(), c0330aC.b()) : null, null, 32);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s99)) {
            return false;
        }
        s99 s99Var = (s99) obj;
        return this.a == s99Var.a && aa4.e(this.b, s99Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "UserCardTransferResponse(success=" + this.a + ", content=" + this.b + ")";
    }
}
