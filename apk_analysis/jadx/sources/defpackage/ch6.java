package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ch6 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("textBlocks")
        private final List<String> b;

        public a(String str, List<String> list) {
            list.getClass();
            this.a = str;
            this.b = list;
        }

        public final List<String> a() {
            return this.b;
        }

        public final String b() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            String str = this.a;
            return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "Content(title=" + this.a + ", textBlocks=" + this.b + ")";
        }
    }

    public ch6(a aVar) {
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
        return (obj instanceof ch6) && aa4.e(this.a, ((ch6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ProductCashbackRulesResponse(content=" + this.a + ")";
    }
}
