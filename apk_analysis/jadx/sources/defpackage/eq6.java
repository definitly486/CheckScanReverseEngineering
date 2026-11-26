package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class eq6 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("infoText")
    private final String d;

    @bq7("mainButton")
    private final a e;

    @bq7("logoUrl")
    private final String f;

    @bq7("from")
    private final c g;

    @bq7("to")
    private final c h;

    @bq7("confirm")
    private final b i;

    @bq7("ordInfo")
    private final c06 j;

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
            return me0.c("ButtonResponse(title=", this.a, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("mainButton")
        private final a d;

        @bq7("secondButton")
        private final a e;

        public b(String str, String str2, String str3, a aVar, a aVar2) {
            str.getClass();
            str2.getClass();
            aVar.getClass();
            aVar2.getClass();
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
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            return this.e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            a aVar = this.d;
            a aVar2 = this.e;
            StringBuilder sbD = ad2.d("ConfirmResponse(title=", str, ", text=", str2, ", logoUrl=");
            sbD.append(str3);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondButton=");
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

        @bq7("logoUrl")
        private final String c;

        @bq7("rightText")
        private final String d;

        public c(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final km7.a a() {
            return new km7.a(this.c, this.a, this.b, this.d);
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
            return dg.c(ad2.d("ExchangeItemResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ", rightText=", this.d, ")");
        }
    }

    public eq6(int i, String str, String str2, String str3, a aVar, String str4, c cVar, c cVar2, b bVar, c06 c06Var) {
        str.getClass();
        str2.getClass();
        aVar.getClass();
        str4.getClass();
        cVar.getClass();
        cVar2.getClass();
        bVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = aVar;
        this.f = str4;
        this.g = cVar;
        this.h = cVar2;
        this.i = bVar;
        this.j = c06Var;
    }

    public final km7 a() {
        String str = this.f;
        String str2 = this.b;
        String str3 = this.d;
        String str4 = this.c;
        km7.a aVarA = this.g.a();
        km7.a aVarA2 = this.h.a();
        String strA = this.e.a();
        int i = this.a;
        String strA2 = this.i.a();
        if (strA2 == null) {
            strA2 = "";
        }
        em7 em7Var = new em7(i, strA2, this.i.e(), this.i.d(), this.i.c().a(), this.i.b().a());
        c06 c06Var = this.j;
        return new km7(str, str2, str3, str4, aVarA, aVarA2, strA, em7Var, c06Var != null ? c06Var.f() : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eq6)) {
            return false;
        }
        eq6 eq6Var = (eq6) obj;
        return this.a == eq6Var.a && aa4.e(this.b, eq6Var.b) && aa4.e(this.c, eq6Var.c) && aa4.e(this.d, eq6Var.d) && aa4.e(this.e, eq6Var.e) && aa4.e(this.f, eq6Var.f) && aa4.e(this.g, eq6Var.g) && aa4.e(this.h, eq6Var.h) && aa4.e(this.i, eq6Var.i) && aa4.e(this.j, eq6Var.j);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + zg.b((this.e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f)) * 31)) * 31)) * 31;
        c06 c06Var = this.j;
        return iHashCode + (c06Var != null ? c06Var.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        a aVar = this.e;
        String str4 = this.f;
        c cVar = this.g;
        c cVar2 = this.h;
        b bVar = this.i;
        c06 c06Var = this.j;
        StringBuilder sbE = ng.e(i, "PromocodeExchangePageResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", infoText=", str3, ", mainButton=");
        sbE.append(aVar);
        sbE.append(", logoUrl=");
        sbE.append(str4);
        sbE.append(", from=");
        sbE.append(cVar);
        sbE.append(", to=");
        sbE.append(cVar2);
        sbE.append(", confirm=");
        sbE.append(bVar);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(")");
        return sbE.toString();
    }
}
