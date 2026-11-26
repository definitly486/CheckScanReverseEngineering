package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rt5 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("conditions")
        private final List<C0325a> b;

        /* JADX INFO: renamed from: rt5$a$a, reason: collision with other inner class name */
        public static final class C0325a {

            @bq7("text")
            private final String a;

            public C0325a(String str) {
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
                return (obj instanceof C0325a) && aa4.e(this.a, ((C0325a) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("Condition(text=", this.a, ")");
            }
        }

        public a(String str, List<C0325a> list) {
            str.getClass();
            list.getClass();
            this.a = str;
            this.b = list;
        }

        public final List<C0325a> a() {
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
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Content(title=" + this.a + ", conditions=" + this.b + ")";
        }
    }

    public rt5(a aVar) {
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
        return (obj instanceof rt5) && aa4.e(this.a, ((rt5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "OfferConditionsListResponse(content=" + this.a + ")";
    }
}
