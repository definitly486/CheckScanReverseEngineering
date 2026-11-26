package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class kc {

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final l20 a;

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a b;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("textFormatted")
        private final String d;

        @bq7("mainButton")
        private final C0219a e;

        @bq7("secondButton")
        private final C0219a f;

        /* JADX INFO: renamed from: kc$a$a, reason: collision with other inner class name */
        public static final class C0219a {

            @bq7("text")
            private final String a;

            @bq7("url")
            private final String b;

            public C0219a(String str, String str2) {
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
                if (!(obj instanceof C0219a)) {
                    return false;
                }
                C0219a c0219a = (C0219a) obj;
                return aa4.e(this.a, c0219a.a) && aa4.e(this.b, c0219a.b);
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

        public a(String str, String str2, String str3, String str4, C0219a c0219a, C0219a c0219a2) {
            str.getClass();
            str2.getClass();
            c0219a.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = c0219a;
            this.f = c0219a2;
        }

        public final String a() {
            return this.c;
        }

        public final C0219a b() {
            return this.e;
        }

        public final C0219a c() {
            return this.f;
        }

        public final String d() {
            return this.d;
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            int iHashCode2 = (this.e.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            C0219a c0219a = this.f;
            return iHashCode2 + (c0219a != null ? c0219a.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            C0219a c0219a = this.e;
            C0219a c0219a2 = this.f;
            StringBuilder sbD = ad2.d("ContentResponse(title=", str, ", text=", str2, ", logoUrl=");
            kv2.c(sbD, str3, ", textFormatted=", str4, ", mainButton=");
            sbD.append(c0219a);
            sbD.append(", secondButton=");
            sbD.append(c0219a2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public kc(l20 l20Var, a aVar) {
        l20Var.getClass();
        aVar.getClass();
        this.a = l20Var;
        this.b = aVar;
    }

    public final a a() {
        return this.b;
    }

    public final l20 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kc)) {
            return false;
        }
        kc kcVar = (kc) obj;
        return this.a == kcVar.a && aa4.e(this.b, kcVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AlfaTransferCashbackResponse(status=" + this.a + ", content=" + this.b + ")";
    }
}
