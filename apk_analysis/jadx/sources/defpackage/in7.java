package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class in7 implements fn7 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("coverUrl")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("kind")
        private final b d;

        public a(String str, String str2, String str3, b bVar) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = bVar;
        }

        public final String a() {
            return this.b;
        }

        public final b b() {
            return this.d;
        }

        public final String c() {
            return this.c;
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d == aVar.d;
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            b bVar = this.d;
            return iHashCode3 + (bVar != null ? bVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            b bVar = this.d;
            StringBuilder sbD = ad2.d("Content(title=", str, ", coverUrl=", str2, ", logoUrl=");
            sbD.append(str3);
            sbD.append(", kind=");
            sbD.append(bVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public enum b {
        MixedOffers,
        MerchantOffers
    }

    public in7(a aVar) {
        aVar.getClass();
        this.a = aVar;
        fn7.a aVar2 = fn7.a.SelectionHeader;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof in7) && aa4.e(this.a, ((in7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SelectionHeaderResponse(content=" + this.a + ")";
    }
}
