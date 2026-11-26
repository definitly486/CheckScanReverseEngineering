package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class st5 implements zh6 {

    @bq7("refId")
    private final int a;

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a b;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("coverUrl")
        private final String c;

        public a(int i, String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            return me0.d(ng.e(i, "Content(id=", ", title=", str, ", coverUrl="), this.c, ")");
        }
    }

    public st5(int i, a aVar) {
        aVar.getClass();
        this.a = i;
        this.b = aVar;
        zh6.a aVar2 = zh6.a.OfferHeader;
    }

    public final a a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof st5)) {
            return false;
        }
        st5 st5Var = (st5) obj;
        return this.a == st5Var.a && aa4.e(this.b, st5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "OfferHeaderResponse(refId=" + this.a + ", content=" + this.b + ")";
    }
}
