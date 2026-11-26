package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fj6 implements ik6 {

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

        @bq7("borderColor")
        private final String d;

        @bq7("logoUrl")
        private final String e;

        @bq7("merchant")
        private final b f;

        @bq7("offersCount")
        private final int g;

        @bq7("offers")
        private final List<sj6> h;

        @bq7("expanded")
        private final boolean i;

        public a(int i, String str, String str2, String str3, String str4, b bVar, int i2, List<sj6> list, boolean z) {
            str.getClass();
            list.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.f = bVar;
            this.g = i2;
            this.h = list;
            this.i = z;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final boolean c() {
            return this.i;
        }

        public final int d() {
            return this.a;
        }

        public final String e() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && this.g == aVar.g && aa4.e(this.h, aVar.h) && this.i == aVar.i;
        }

        public final b f() {
            return this.f;
        }

        public final List<sj6> g() {
            return this.h;
        }

        public final String h() {
            return this.b;
        }

        public final int hashCode() {
            int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.e;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            b bVar = this.f;
            return Boolean.hashCode(this.i) + e2.b(this.h, ej0.b(this.g, (iHashCode3 + (bVar != null ? bVar.hashCode() : 0)) * 31, 31), 31);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            String str4 = this.e;
            b bVar = this.f;
            int i2 = this.g;
            List<sj6> list = this.h;
            boolean z = this.i;
            StringBuilder sbE = ng.e(i, "ContentResponse(id=", ", title=", str, ", coverUrl=");
            kv2.c(sbE, str2, ", borderColor=", str3, ", logoUrl=");
            sbE.append(str4);
            sbE.append(", merchant=");
            sbE.append(bVar);
            sbE.append(", offersCount=");
            sbE.append(i2);
            sbE.append(", offers=");
            sbE.append(list);
            sbE.append(", expanded=");
            return dh.e(sbE, z, ")");
        }
    }

    public static final class b {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("logoUrl")
        private final String c;

        public b(int i, String str, String str2) {
            str.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
        }

        public final String a() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
            String str = this.c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            return me0.d(ng.e(i, "MerchantResponse(id=", ", title=", str, ", logoUrl="), this.c, ")");
        }
    }

    public fj6(int i, a aVar) {
        aVar.getClass();
        this.a = i;
        this.b = aVar;
        ik6.a aVar2 = ik6.a.MerchantOffersSelection;
    }

    public final a a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fj6)) {
            return false;
        }
        fj6 fj6Var = (fj6) obj;
        return this.a == fj6Var.a && aa4.e(this.b, fj6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ProductsMerchantOffersSelectionResponse(refId=" + this.a + ", content=" + this.b + ")";
    }
}
