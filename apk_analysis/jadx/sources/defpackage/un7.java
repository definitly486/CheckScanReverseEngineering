package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class un7 implements fn7 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("promoGroupId")
        private final Integer d;

        public a(int i, String str, String str2, Integer num) {
            str.getClass();
            str2.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = num;
        }

        public final String a() {
            return this.c;
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
            Integer num = this.d;
            return iB + (num == null ? 0 : num.hashCode());
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            Integer num = this.d;
            StringBuilder sbE = ng.e(i, "Content(id=", ", title=", str, ", logoUrl=");
            sbE.append(str2);
            sbE.append(", promoGroupId=");
            sbE.append(num);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public un7(a aVar) {
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
        return (obj instanceof un7) && aa4.e(this.a, ((un7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SelectionMerchantResponse(content=" + this.a + ")";
    }
}
