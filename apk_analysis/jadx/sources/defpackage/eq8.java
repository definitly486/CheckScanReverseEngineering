package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class eq8 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        public a(String str, String str2) {
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
            return n2.d("Content(title=", this.a, ", text=", this.b, ")");
        }
    }

    public eq8(a aVar) {
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
        return (obj instanceof eq8) && aa4.e(this.a, ((eq8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "TextBlockResponse(content=" + this.a + ")";
    }
}
