package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class z95 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("merchants")
        private final List<C0372a> b;

        /* JADX INFO: renamed from: z95$a$a, reason: collision with other inner class name */
        public static final class C0372a {

            @bq7(TtmlNode.ATTR_ID)
            private final int a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            @bq7("logoUrl")
            private final String c;

            @bq7("promoGroupId")
            private final Integer d;

            public C0372a(int i, String str, String str2, Integer num) {
                str.getClass();
                str2.getClass();
                this.a = i;
                this.b = str;
                this.c = str2;
                this.d = num;
            }

            public final int a() {
                return this.a;
            }

            public final String b() {
                return this.c;
            }

            public final String c() {
                return this.b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0372a)) {
                    return false;
                }
                C0372a c0372a = (C0372a) obj;
                return this.a == c0372a.a && aa4.e(this.b, c0372a.b) && aa4.e(this.c, c0372a.c) && aa4.e(this.d, c0372a.d);
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
                StringBuilder sbE = ng.e(i, "Merchant(id=", ", title=", str, ", logoUrl=");
                sbE.append(str2);
                sbE.append(", promoGroupId=");
                sbE.append(num);
                sbE.append(")");
                return sbE.toString();
            }
        }

        public a(String str, List<C0372a> list) {
            str.getClass();
            list.getClass();
            this.a = str;
            this.b = list;
        }

        public final List<C0372a> a() {
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
            return "Content(title=" + this.a + ", merchants=" + this.b + ")";
        }
    }

    public z95(a aVar) {
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
        return (obj instanceof z95) && aa4.e(this.a, ((z95) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "MerchantsListResponse(content=" + this.a + ")";
    }
}
