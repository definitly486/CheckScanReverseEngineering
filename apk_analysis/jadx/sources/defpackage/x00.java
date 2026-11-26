package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class x00 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final l20 b;

    public static final class a {

        @bq7(DynamicLink.Builder.KEY_LINK)
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("text")
        private final String d;

        @bq7("mainButton")
        private final d10.a e;

        public a(String str, String str2, String str3, String str4, d10.a aVar) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = aVar;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.c;
        }

        public final d10.a c() {
            return this.e;
        }

        public final String d() {
            return this.d;
        }

        public final String e() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.d;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            d10.a aVar = this.e;
            return iHashCode4 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            d10.a aVar = this.e;
            StringBuilder sbD = ad2.d("ContentResponse(link=", str, ", title=", str2, ", logoUrl=");
            kv2.c(sbD, str3, ", text=", str4, ", mainButton=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public x00(a aVar, l20 l20Var) {
        aVar.getClass();
        l20Var.getClass();
        this.a = aVar;
        this.b = l20Var;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x00)) {
            return false;
        }
        x00 x00Var = (x00) obj;
        return aa4.e(this.a, x00Var.a) && this.b == x00Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BalanceAlfaIdLinkResponse(content=" + this.a + ", status=" + this.b + ")";
    }
}
