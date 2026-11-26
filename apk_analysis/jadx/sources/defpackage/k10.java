package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k10 {

    @bq7("phone")
    private final e a;

    @bq7("cards")
    private final List<a> b;

    @bq7("commonCells")
    private final List<c> c;

    @bq7("commonBanners")
    private final List<b> d;

    @bq7("compactBanners")
    private final List<d> e;

    @bq7("registration")
    private final f f;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final Long a;

        @bq7("url")
        private final String b;

        @bq7("opId")
        private final Long c;

        @bq7(NotificationCompat.CATEGORY_STATUS)
        private final EnumC0216a d;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String e;

        @bq7("text")
        private final String f;

        @bq7("logoUrl")
        private final String g;

        /* JADX INFO: renamed from: k10$a$a, reason: collision with other inner class name */
        public enum EnumC0216a {
            TRANSFERABLE,
            NEED_ATTACH
        }

        public a(Long l, String str, Long l2, EnumC0216a enumC0216a, String str2, String str3, String str4) {
            enumC0216a.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            this.a = l;
            this.b = str;
            this.c = l2;
            this.d = enumC0216a;
            this.e = str2;
            this.f = str3;
            this.g = str4;
        }

        public final Long a() {
            return this.a;
        }

        public final String b() {
            return this.g;
        }

        public final EnumC0216a c() {
            return this.d;
        }

        public final String d() {
            return this.f;
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d == aVar.d && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g);
        }

        public final String f() {
            return this.b;
        }

        public final int hashCode() {
            Long l = this.a;
            int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Long l2 = this.c;
            return this.g.hashCode() + zg.b(zg.b((this.d.hashCode() + ((iHashCode2 + (l2 != null ? l2.hashCode() : 0)) * 31)) * 31, 31, this.e), 31, this.f);
        }

        public final String toString() {
            Long l = this.a;
            String str = this.b;
            Long l2 = this.c;
            EnumC0216a enumC0216a = this.d;
            String str2 = this.e;
            String str3 = this.f;
            String str4 = this.g;
            StringBuilder sb = new StringBuilder("CardResponse(id=");
            sb.append(l);
            sb.append(", url=");
            sb.append(str);
            sb.append(", opId=");
            sb.append(l2);
            sb.append(", status=");
            sb.append(enumC0216a);
            sb.append(", title=");
            kv2.c(sb, str2, ", text=", str3, ", logoUrl=");
            return me0.d(sb, str4, ")");
        }
    }

    public static final class b {

        @bq7("logoUrl")
        private final String a;

        @bq7("url")
        private final String b;

        @bq7("aspectRatio")
        private final double c;

        public b(String str, String str2, double d) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = d;
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
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && Double.compare(this.c, bVar.c) == 0;
        }

        public final int hashCode() {
            return Double.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            double d = this.c;
            StringBuilder sbD = ad2.d("CommonBannerResponse(logoUrl=", str, ", url=", str2, ", aspectRatio=");
            sbD.append(d);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class d {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("url")
        private final String d;

        public d(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("CompactBannerResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ", url=", this.d, ")");
        }
    }

    public static final class e {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        public e(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
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
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && aa4.e(this.c, eVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("PhoneResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ")");
        }
    }

    public static final class f {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        public f(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return aa4.e(this.a, fVar.a) && aa4.e(this.b, fVar.b) && aa4.e(this.c, fVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("RegistrationResponse(title=", str, ", url=", str2, ", logoUrl="), this.c, ")");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ k10(e eVar, List list, List list2, List list3, List list4, f fVar, int i, jh2 jh2Var) {
        int i2 = i & 2;
        kx2 kx2Var = kx2.b;
        this(eVar, i2 != 0 ? kx2Var : list, (i & 4) != 0 ? kx2Var : list2, (i & 8) != 0 ? kx2Var : list3, (i & 16) != 0 ? kx2Var : list4, fVar);
    }

    public final List<a> a() {
        return this.b;
    }

    public final List<b> b() {
        return this.d;
    }

    public final List<c> c() {
        return this.c;
    }

    public final List<d> d() {
        return this.e;
    }

    public final e e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k10)) {
            return false;
        }
        k10 k10Var = (k10) obj;
        return aa4.e(this.a, k10Var.a) && aa4.e(this.b, k10Var.b) && aa4.e(this.c, k10Var.c) && aa4.e(this.d, k10Var.d) && aa4.e(this.e, k10Var.e) && aa4.e(this.f, k10Var.f);
    }

    public final f f() {
        return this.f;
    }

    public final int hashCode() {
        e eVar = this.a;
        int iHashCode = (eVar == null ? 0 : eVar.hashCode()) * 31;
        List<a> list = this.b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<c> list2 = this.c;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<b> list3 = this.d;
        int iHashCode4 = (iHashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<d> list4 = this.e;
        int iHashCode5 = (iHashCode4 + (list4 == null ? 0 : list4.hashCode())) * 31;
        f fVar = this.f;
        return iHashCode5 + (fVar != null ? fVar.hashCode() : 0);
    }

    public final String toString() {
        return "BalanceBlockTransferResponse(phone=" + this.a + ", cards=" + this.b + ", commonCells=" + this.c + ", commonBanners=" + this.d + ", compactBanners=" + this.e + ", registrationCell=" + this.f + ")";
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("url")
        private final String d;

        public c(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("CommonCellResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ", url=", this.d, ")");
        }

        public /* synthetic */ c(String str, String str2, String str3, String str4, int i, jh2 jh2Var) {
            this(str, (i & 2) != 0 ? new String() : str2, str3, str4);
        }
    }

    public k10(e eVar, List<a> list, List<c> list2, List<b> list3, List<d> list4, f fVar) {
        this.a = eVar;
        this.b = list;
        this.c = list2;
        this.d = list3;
        this.e = list4;
        this.f = fVar;
    }
}
