package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xa0 {

    @bq7("headerBlock")
    private final f a;

    @bq7("stepsBlock")
    private final g b;

    @bq7("benefitsBlock")
    private final b c;

    @bq7("descriptionBlock")
    private final d d;

    @bq7("buttonBlock")
    private final c e;

    public static final class a {

        @bq7("logoUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        public a(String str, String str2, String str3) {
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            String str = this.a;
            int iB = zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
            String str2 = this.c;
            return iB + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("BannerResponse(logoUrl=", str, ", title=", str2, ", text="), this.c, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("banners")
        private final List<a> b;

        public b(String str, List<a> list) {
            str.getClass();
            list.getClass();
            this.a = str;
            this.b = list;
        }

        public final List<a> a() {
            return this.b;
        }

        public final String b() {
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
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "BenefitResponse(title=" + this.a + ", banners=" + this.b + ")";
        }
    }

    public static final class c {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        public c(String str, String str2) {
            str.getClass();
            str2.getClass();
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
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("ButtonResponse(text=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class d {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("subblocks")
        private final List<e> b;

        public d(String str, List<e> list) {
            str.getClass();
            list.getClass();
            this.a = str;
            this.b = list;
        }

        public final List<e> a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "DescriptionBlockResponse(title=" + this.a + ", subblocks=" + this.b + ")";
        }
    }

    public static final class e {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        public e(String str, String str2) {
            str.getClass();
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
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("DescriptionSubBlockResponse(title=", this.a, ", text=", this.b, ")");
        }
    }

    public static final class f {

        @bq7("backgroundColor")
        private final String a;

        @bq7("logoUrl")
        private final String b;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String c;

        @bq7("text")
        private final String d;

        public f(String str, String str2, String str3, String str4) {
            x7.b(str, str2, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.d;
        }

        public final String d() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return aa4.e(this.a, fVar.a) && aa4.e(this.b, fVar.b) && aa4.e(this.c, fVar.c) && aa4.e(this.d, fVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            return this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("HeaderResponse(backgroundColor=", str, ", logoUrl=", str2, ", title="), this.c, ", text=", this.d, ")");
        }
    }

    public static final class g {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("banners")
        private final List<a> b;

        @bq7("infoText")
        private final String c;

        public g(String str, List<a> list, String str2) {
            str.getClass();
            list.getClass();
            str2.getClass();
            this.a = str;
            this.b = list;
            this.c = str2;
        }

        public final List<a> a() {
            return this.b;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return aa4.e(this.a, gVar.a) && aa4.e(this.b, gVar.b) && aa4.e(this.c, gVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + e2.b(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            String str = this.a;
            List<a> list = this.b;
            String str2 = this.c;
            StringBuilder sb = new StringBuilder("StepsBlockResponse(title=");
            sb.append(str);
            sb.append(", banners=");
            sb.append(list);
            sb.append(", infoText=");
            return me0.d(sb, str2, ")");
        }
    }

    public xa0(f fVar, g gVar, b bVar, d dVar, c cVar) {
        fVar.getClass();
        gVar.getClass();
        bVar.getClass();
        cVar.getClass();
        this.a = fVar;
        this.b = gVar;
        this.c = bVar;
        this.d = dVar;
        this.e = cVar;
    }

    public final b a() {
        return this.c;
    }

    public final c b() {
        return this.e;
    }

    public final d c() {
        return this.d;
    }

    public final f d() {
        return this.a;
    }

    public final g e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa0)) {
            return false;
        }
        xa0 xa0Var = (xa0) obj;
        return aa4.e(this.a, xa0Var.a) && aa4.e(this.b, xa0Var.b) && aa4.e(this.c, xa0Var.c) && aa4.e(this.d, xa0Var.d) && aa4.e(this.e, xa0Var.e);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        d dVar = this.d;
        return this.e.hashCode() + ((iHashCode + (dVar == null ? 0 : dVar.hashCode())) * 31);
    }

    public final String toString() {
        return "BankLandingResponse(headerBlock=" + this.a + ", stepsBlock=" + this.b + ", benefitsBlock=" + this.c + ", descriptionBlock=" + this.d + ", buttonBlock=" + this.e + ")";
    }
}
