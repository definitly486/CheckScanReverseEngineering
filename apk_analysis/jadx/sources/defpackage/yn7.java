package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class yn7 implements fn7 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        public a(String str) {
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
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("Content(title=", this.a, ")");
        }
    }

    public yn7(a aVar) {
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
        return (obj instanceof yn7) && aa4.e(this.a, ((yn7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SelectionTitleResponse(content=" + this.a + ")";
    }
}
