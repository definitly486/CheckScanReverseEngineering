package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class go8 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7("simpleSuccessBanner")
    private final d b;

    @bq7("detailedSuccessBanner")
    private final b c;

    @bq7("failBanner")
    private final c d;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("ButtonResponse(text=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("imageUrl")
        private final String c;

        @bq7("mainButton")
        private final a d;

        @bq7("secondaryButton")
        private final a e;

        public b(String str, String str2, String str3, a aVar, a aVar2) {
            str.getClass();
            str3.getClass();
            aVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = aVar;
            this.e = aVar2;
        }

        public final String a() {
            return this.c;
        }

        public final a b() {
            return this.d;
        }

        public final a c() {
            return this.e;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (this.d.hashCode() + zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c)) * 31;
            a aVar = this.e;
            return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            a aVar = this.d;
            a aVar2 = this.e;
            StringBuilder sbD = ad2.d("DetailedSuccessBannerResponse(title=", str, ", text=", str2, ", imageUrl=");
            sbD.append(str3);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondaryButton=");
            sbD.append(aVar2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final a c;

        public c(String str, String str2, a aVar) {
            str.getClass();
            aVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = aVar;
        }

        public final a a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            StringBuilder sbD = ad2.d("FailBannerResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class d {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("subtitle")
        private final String c;

        @bq7("imageUrl")
        private final String d;

        @bq7("badgeUrls")
        private final List<String> e;

        @bq7("mainButton")
        private final a f;

        @bq7("secondaryButton")
        private final a g;

        public d(String str, String str2, String str3, String str4, List<String> list, a aVar, a aVar2) {
            str.getClass();
            str3.getClass();
            str4.getClass();
            list.getClass();
            aVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = list;
            this.f = aVar;
            this.g = aVar2;
        }

        public final List<String> a() {
            return this.e;
        }

        public final String b() {
            return this.d;
        }

        public final a c() {
            return this.f;
        }

        public final a d() {
            return this.g;
        }

        public final String e() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d) && aa4.e(this.e, dVar.e) && aa4.e(this.f, dVar.f) && aa4.e(this.g, dVar.g);
        }

        public final String f() {
            return this.b;
        }

        public final String g() {
            return this.a;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (this.f.hashCode() + e2.b(this.e, zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31)) * 31;
            a aVar = this.g;
            return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            List<String> list = this.e;
            a aVar = this.f;
            a aVar2 = this.g;
            StringBuilder sbD = ad2.d("SimpleSuccessBannerResponse(title=", str, ", text=", str2, ", subtitle=");
            kv2.c(sbD, str3, ", imageUrl=", str4, ", badgeUrls=");
            sbD.append(list);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondaryButton=");
            sbD.append(aVar2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public go8(boolean z, d dVar, b bVar, c cVar) {
        this.a = z;
        this.b = dVar;
        this.c = bVar;
        this.d = cVar;
    }

    public final b a() {
        return this.c;
    }

    public final c b() {
        return this.d;
    }

    public final d c() {
        return this.b;
    }

    public final boolean d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof go8)) {
            return false;
        }
        go8 go8Var = (go8) obj;
        return this.a == go8Var.a && aa4.e(this.b, go8Var.b) && aa4.e(this.c, go8Var.c) && aa4.e(this.d, go8Var.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        d dVar = this.b;
        int iHashCode2 = (iHashCode + (dVar == null ? 0 : dVar.hashCode())) * 31;
        b bVar = this.c;
        int iHashCode3 = (iHashCode2 + (bVar == null ? 0 : bVar.hashCode())) * 31;
        c cVar = this.d;
        return iHashCode3 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final String toString() {
        return "TaskRewardClaimResponse(success=" + this.a + ", simpleSuccessBanner=" + this.b + ", detailedSuccessBanner=" + this.c + ", failBanner=" + this.d + ")";
    }
}
