package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class gj6 implements ik6 {

    @bq7("refId")
    private final int a;

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a b;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("offers")
        private final List<sj6> c;

        @bq7("coverUrl")
        private final String d;

        @bq7("logoUrl")
        private final String e;

        @bq7("merchant")
        private final fj6.b f;

        @bq7("borderColor")
        private final String g;

        @bq7("expanded")
        private final boolean h;

        public a(int i, String str, List<sj6> list, String str2, String str3, fj6.b bVar, String str4, boolean z) {
            str.getClass();
            list.getClass();
            this.a = i;
            this.b = str;
            this.c = list;
            this.d = str2;
            this.e = str3;
            this.f = bVar;
            this.g = str4;
            this.h = z;
        }

        public final String a() {
            return this.g;
        }

        public final String b() {
            return this.d;
        }

        public final boolean c() {
            return this.h;
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g) && this.h == aVar.h;
        }

        public final fj6.b f() {
            return this.f;
        }

        public final List<sj6> g() {
            return this.c;
        }

        public final String h() {
            return this.b;
        }

        public final int hashCode() {
            int iB = e2.b(this.c, zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31);
            String str = this.d;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.e;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            fj6.b bVar = this.f;
            int iHashCode3 = (iHashCode2 + (bVar == null ? 0 : bVar.hashCode())) * 31;
            String str3 = this.g;
            return Boolean.hashCode(this.h) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            List<sj6> list = this.c;
            String str2 = this.d;
            String str3 = this.e;
            fj6.b bVar = this.f;
            String str4 = this.g;
            boolean z = this.h;
            StringBuilder sbE = ng.e(i, "ContentResponse(id=", ", title=", str, ", offers=");
            sbE.append(list);
            sbE.append(", coverUrl=");
            sbE.append(str2);
            sbE.append(", logoUrl=");
            sbE.append(str3);
            sbE.append(", merchant=");
            sbE.append(bVar);
            sbE.append(", borderColor=");
            sbE.append(str4);
            sbE.append(", expanded=");
            sbE.append(z);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public gj6(int i, a aVar) {
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
        if (!(obj instanceof gj6)) {
            return false;
        }
        gj6 gj6Var = (gj6) obj;
        return this.a == gj6Var.a && aa4.e(this.b, gj6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ProductsMixedOffersSelectionResponse(refId=" + this.a + ", content=" + this.b + ")";
    }
}
