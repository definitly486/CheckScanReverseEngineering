package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class g10 {

    @bq7("balance")
    private final c a;

    @bq7("accrual")
    private final a b;

    @bq7("apiBankAlfaTransferButton")
    private final b c;

    public static final class a {

        @bq7("logoUrl")
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("textColor")
        private final String c;

        @bq7("backgroundColor")
        private final String d;

        @bq7("bottomSheet")
        private final C0188a e;

        /* JADX INFO: renamed from: g10$a$a, reason: collision with other inner class name */
        public static final class C0188a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            public C0188a(String str, String str2) {
                str.getClass();
                str2.getClass();
                this.a = str;
                this.b = str2;
            }

            public final String a() {
                return this.b;
            }

            public final String b() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0188a)) {
                    return false;
                }
                C0188a c0188a = (C0188a) obj;
                return aa4.e(this.a, c0188a.a) && aa4.e(this.b, c0188a.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("BottomSheetResponse(title=", this.a, ", text=", this.b, ")");
            }
        }

        public a(String str, String str2, String str3, String str4, C0188a c0188a) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            c0188a.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = c0188a;
        }

        public final String a() {
            return this.d;
        }

        public final C0188a b() {
            return this.e;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.c;
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
            return this.e.hashCode() + zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            C0188a c0188a = this.e;
            StringBuilder sbD = ad2.d("AccrualResponse(logoUrl=", str, ", text=", str2, ", textColor=");
            kv2.c(sbD, str3, ", backgroundColor=", str4, ", bottomSheet=");
            sbD.append(c0188a);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class b {

        @bq7("text")
        private final String a;

        public b(String str) {
            str.getClass();
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("BalanceBlockCashbackAlfaTransferButtonResponse(text=", this.a, ")");
        }
    }

    public g10(c cVar, a aVar, b bVar) {
        cVar.getClass();
        this.a = cVar;
        this.b = aVar;
        this.c = bVar;
    }

    public final a a() {
        return this.b;
    }

    public final b b() {
        return this.c;
    }

    public final c c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g10)) {
            return false;
        }
        g10 g10Var = (g10) obj;
        return aa4.e(this.a, g10Var.a) && aa4.e(this.b, g10Var.b) && aa4.e(this.c, g10Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        a aVar = this.b;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        b bVar = this.c;
        return iHashCode2 + (bVar != null ? bVar.hashCode() : 0);
    }

    public final String toString() {
        return "BalanceBlockCashbackResponse(balance=" + this.a + ", accrual=" + this.b + ", apiBankAlfaTransferButton=" + this.c + ")";
    }

    public static final class c {

        @bq7("topText")
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("bottomText")
        private final String c;

        public c(String str, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.a;
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
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("BalanceResponse(topText=", str, ", text=", str2, ", bottomText="), this.c, ")");
        }

        public /* synthetic */ c(String str, String str2, String str3, int i, jh2 jh2Var) {
            this(str, str2, (i & 4) != 0 ? null : str3);
        }
    }
}
