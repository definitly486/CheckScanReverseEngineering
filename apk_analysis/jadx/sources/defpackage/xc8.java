package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class xc8 {

    @bq7("splash")
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final C0357a c;

        @bq7("lottieUrl")
        private final String d;

        /* JADX INFO: renamed from: xc8$a$a, reason: collision with other inner class name */
        public static final class C0357a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            public C0357a(String str, String str2) {
                str.getClass();
                str2.getClass();
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
                if (!(obj instanceof C0357a)) {
                    return false;
                }
                C0357a c0357a = (C0357a) obj;
                return aa4.e(this.a, c0357a.a) && aa4.e(this.b, c0357a.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
            }
        }

        public a(String str, String str2, C0357a c0357a, String str3) {
            str.getClass();
            str2.getClass();
            c0357a.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = c0357a;
            this.d = str3;
        }

        public final String a() {
            return this.d;
        }

        public final C0357a b() {
            return this.c;
        }

        public final String c() {
            return this.b;
        }

        public final String d() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + ((this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0357a c0357a = this.c;
            String str3 = this.d;
            StringBuilder sbD = ad2.d("SplashResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(c0357a);
            sbD.append(", lottieUrl=");
            sbD.append(str3);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public xc8(a aVar) {
        this.a = aVar;
    }

    public final wc8 a() {
        a aVar = this.a;
        if (aVar != null) {
            return new wc8(aVar.d(), aVar.c(), aVar.a(), aVar.b().a(), aVar.b().b());
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xc8) && aa4.e(this.a, ((xc8) obj).a);
    }

    public final int hashCode() {
        a aVar = this.a;
        if (aVar == null) {
            return 0;
        }
        return aVar.hashCode();
    }

    public final String toString() {
        return "SubscriptionSplashResponse(splash=" + this.a + ")";
    }
}
