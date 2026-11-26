package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class j61 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("valueText")
        private final String b;

        @bq7("prefix")
        private final String c;

        @bq7(DynamicLink.Builder.KEY_SUFFIX)
        private final String d;

        public a(String str, String str2, String str3, String str4) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.d;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("Content(title=", str, ", valueText=", str2, ", prefix="), this.c, ", suffix=", this.d, ")");
        }
    }

    public j61(a aVar) {
        aVar.getClass();
        this.a = aVar;
        zh6.a aVar2 = zh6.a.OfferHeader;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j61) && aa4.e(this.a, ((j61) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CashbackResponse(content=" + this.a + ")";
    }
}
