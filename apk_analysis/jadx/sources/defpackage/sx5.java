package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class sx5 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("favorite")
    private final boolean c;

    @bq7("profit")
    private final c d;

    @bq7("previewLogoUrl")
    private final String e;

    @bq7("ordInfo")
    private final c06 f;

    @bq7("adult")
    private final boolean g;

    public static final class a {

        @bq7("newValue")
        private final String a;

        @bq7("powercode")
        private final b b;

        public a(String str, b bVar) {
            this.a = str;
            this.b = bVar;
        }

        public final dn1.a a() {
            String str = this.a;
            b bVar = this.b;
            return new dn1.a(str, bVar != null ? bVar.a() : null);
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
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            b bVar = this.b;
            return iHashCode + (bVar != null ? bVar.hashCode() : 0);
        }

        public final String toString() {
            return "Hike(newValue=" + this.a + ", powercode=" + this.b + ")";
        }
    }

    public static final class b {

        @bq7("percentIncrease")
        private final Integer a;

        @bq7("endDate")
        private final String b;

        @bq7("hot")
        private final Boolean c;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String d;

        @bq7("description")
        private final String e;

        public b(Integer num, String str, Boolean bool, String str2, String str3) {
            this.a = num;
            this.b = str;
            this.c = bool;
            this.d = str2;
            this.e = str3;
        }

        public final dn1.b a() {
            return new dn1.b(this.a, this.b, this.c, this.d, this.e);
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
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Boolean bool = this.c;
            int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
            String str2 = this.d;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.e;
            return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            Integer num = this.a;
            String str = this.b;
            Boolean bool = this.c;
            String str2 = this.d;
            String str3 = this.e;
            StringBuilder sb = new StringBuilder("Powercode(percentIncrease=");
            sb.append(num);
            sb.append(", endDate=");
            sb.append(str);
            sb.append(", hot=");
            sb.append(bool);
            sb.append(", title=");
            sb.append(str2);
            sb.append(", description=");
            return me0.d(sb, str3, ")");
        }
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("value")
        private final String b;

        @bq7("hike")
        private final a c;

        @bq7("hikeFixed")
        private final fw3 d;

        public c(String str, String str2, a aVar, fw3 fw3Var) {
            this.a = str;
            this.b = str2;
            this.c = aVar;
            this.d = fw3Var;
        }

        public final a a() {
            return this.c;
        }

        public final fw3 b() {
            return this.d;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
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
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            a aVar = this.c;
            int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            fw3 fw3Var = this.d;
            return iHashCode3 + (fw3Var != null ? fw3Var.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            fw3 fw3Var = this.d;
            StringBuilder sbD = ad2.d("Profit(title=", str, ", value=", str2, ", hike=");
            sbD.append(aVar);
            sbD.append(", hikeFixed=");
            sbD.append(fw3Var);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public /* synthetic */ sx5(int i, String str, boolean z, c cVar, String str2, c06 c06Var, boolean z2, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : str, z, cVar, str2, c06Var, (i2 & 64) != 0 ? false : z2);
    }

    public final boolean a() {
        return this.g;
    }

    public final int b() {
        return this.a;
    }

    public final dn1 c() {
        ew3 ew3Var;
        Boolean boolC;
        a aVarA;
        int i = this.a;
        String str = this.b;
        if (str == null) {
            str = "";
        }
        boolean z = this.c;
        c cVar = this.d;
        String strC = cVar != null ? cVar.c() : null;
        c cVar2 = this.d;
        String strD = cVar2 != null ? cVar2.d() : null;
        c cVar3 = this.d;
        dn1.c cVar4 = new dn1.c(strC, strD, (cVar3 == null || (aVarA = cVar3.a()) == null) ? null : aVarA.a());
        c06 c06Var = this.f;
        boolean zBooleanValue = (c06Var == null || (boolC = c06Var.c()) == null) ? false : boolC.booleanValue();
        c06 c06Var2 = this.f;
        String strB = c06Var2 != null ? c06Var2.b() : null;
        String str2 = strB == null ? "" : strB;
        c06 c06Var3 = this.f;
        String strE = c06Var3 != null ? c06Var3.e() : null;
        String str3 = strE == null ? "" : strE;
        c06 c06Var4 = this.f;
        String strA = c06Var4 != null ? c06Var4.a() : null;
        String str4 = strA == null ? "" : strA;
        c06 c06Var5 = this.f;
        String strD2 = c06Var5 != null ? c06Var5.d() : null;
        b06 b06Var = new b06(strD2 == null ? "" : strD2, zBooleanValue, str2, str3, str4);
        boolean z2 = this.g;
        c cVar5 = this.d;
        if ((cVar5 != null ? cVar5.b() : null) == null) {
            ew3Var = null;
        } else {
            String strA2 = this.d.b().a();
            String str5 = strA2 != null ? strA2 : "";
            me6 me6VarB = this.d.b().b();
            ew3Var = new ew3(str5, me6VarB != null ? new dn1.b(me6VarB.c(), me6VarB.b(), me6VarB.d(), me6VarB.e(), me6VarB.a()) : null);
        }
        return new dn1(i, str, z, cVar4, b06Var, z2, ew3Var);
    }

    public final en1 d() {
        c cVar = this.d;
        return (cVar != null ? cVar.b() : null) != null ? new en1.b(c()) : new en1.a(c());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sx5)) {
            return false;
        }
        sx5 sx5Var = (sx5) obj;
        return this.a == sx5Var.a && aa4.e(this.b, sx5Var.b) && this.c == sx5Var.c && aa4.e(this.d, sx5Var.d) && aa4.e(this.e, sx5Var.e) && aa4.e(this.f, sx5Var.f) && this.g == sx5Var.g;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iC = tg.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
        c cVar = this.d;
        int iHashCode2 = (iC + (cVar == null ? 0 : cVar.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        c06 c06Var = this.f;
        return Boolean.hashCode(this.g) + ((iHashCode3 + (c06Var != null ? c06Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        boolean z = this.c;
        c cVar = this.d;
        String str2 = this.e;
        c06 c06Var = this.f;
        boolean z2 = this.g;
        StringBuilder sbE = ng.e(i, "OnlineShopResponse(id=", ", logoUrl=", str, ", isFavorite=");
        sbE.append(z);
        sbE.append(", profit=");
        sbE.append(cVar);
        sbE.append(", previewLogoUrl=");
        sbE.append(str2);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", adult=");
        return dh.e(sbE, z2, ")");
    }

    public sx5(int i, String str, boolean z, c cVar, String str2, c06 c06Var, boolean z2) {
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = cVar;
        this.e = str2;
        this.f = c06Var;
        this.g = z2;
    }
}
