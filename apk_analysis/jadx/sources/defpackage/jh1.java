package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class jh1 {

    @bq7(TtmlNode.ATTR_ID)
    private int a;

    @bq7("purchaseDateTime")
    private String b;

    @bq7("totalSum")
    private int c;

    @bq7("qrCode")
    private String d;

    @bq7("personalDataRequired")
    private Boolean e;

    @bq7("shop")
    private uu7 f;

    @bq7("promotionInfo")
    private final a g;

    @bq7(FirebaseAnalytics.Param.ITEMS)
    private final List<gi6> h;

    @bq7("inn")
    private String i;

    @bq7("organizationName")
    private String j;

    public static final class a {

        @bq7("text")
        private String a;

        @bq7("textColor")
        private String b;

        @bq7("backgroundColor")
        private String c;

        public a(String str, String str2, String str3) {
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("PromotionInfo(text=", str, ", text_color=", str2, ", background_color="), this.c, ")");
        }
    }

    public /* synthetic */ jh1(int i, String str, int i2, String str2, Boolean bool, uu7 uu7Var, a aVar, List list, String str3, String str4, int i3, jh2 jh2Var) {
        this(i, str, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str2, bool, uu7Var, (i3 & 64) != 0 ? null : aVar, (i3 & 128) != 0 ? null : list, str3, str4);
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final uu7 c() {
        return this.f;
    }

    public final int d() {
        return this.c;
    }

    public final hd1 e() {
        int i;
        String str;
        int i2;
        String str2;
        a aVar;
        lu7 lu7Var;
        ArrayList arrayList;
        lu7 lu7VarB = this.f.b();
        int i3 = this.a;
        String str3 = this.b;
        int i4 = this.c;
        String str4 = this.d;
        a aVar2 = this.g;
        Boolean bool = this.e;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        List<gi6> list = this.h;
        if (list != null) {
            List<gi6> list2 = list;
            ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
            for (gi6 gi6Var : list2) {
                int i5 = i4;
                long jB = gi6Var.b();
                String strC = gi6Var.c();
                Pattern patternCompile = Pattern.compile("^\\d*[:)* &]*\\d*[ ]*");
                patternCompile.getClass();
                strC.getClass();
                String strReplaceAll = patternCompile.matcher(strC).replaceAll("");
                strReplaceAll.getClass();
                lu7 lu7Var2 = lu7VarB;
                ArrayList arrayList3 = arrayList2;
                arrayList3.add(new vg6(jB, ta8.f0(strReplaceAll).toString(), gi6Var.d(), gi6Var.a(), gi6Var.f(), gi6Var.g(), gi6Var.h(), gi6Var.e(), this.b, lu7Var2, ""));
                arrayList2 = arrayList3;
                lu7VarB = lu7Var2;
                str3 = str3;
                i4 = i5;
                str4 = str4;
                aVar2 = aVar2;
                i3 = i3;
            }
            i = i3;
            str = str3;
            i2 = i4;
            str2 = str4;
            aVar = aVar2;
            lu7Var = lu7VarB;
            arrayList = arrayList2;
        } else {
            i = i3;
            str = str3;
            i2 = i4;
            str2 = str4;
            aVar = aVar2;
            lu7Var = lu7VarB;
            arrayList = null;
        }
        return new hd1(i, str, i2, str2, lu7Var, aVar, zBooleanValue, arrayList, this.i, this.j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jh1)) {
            return false;
        }
        jh1 jh1Var = (jh1) obj;
        return this.a == jh1Var.a && aa4.e(this.b, jh1Var.b) && this.c == jh1Var.c && aa4.e(this.d, jh1Var.d) && aa4.e(this.e, jh1Var.e) && aa4.e(this.f, jh1Var.f) && aa4.e(this.g, jh1Var.g) && aa4.e(this.h, jh1Var.h) && aa4.e(this.i, jh1Var.i) && aa4.e(this.j, jh1Var.j);
    }

    public final int hashCode() {
        int iB = ej0.b(this.c, zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.e;
        int iHashCode2 = (this.f.hashCode() + ((iHashCode + (bool == null ? 0 : bool.hashCode())) * 31)) * 31;
        a aVar = this.g;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        List<gi6> list = this.h;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.i;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.j;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        int i2 = this.c;
        String str2 = this.d;
        Boolean bool = this.e;
        uu7 uu7Var = this.f;
        a aVar = this.g;
        List<gi6> list = this.h;
        String str3 = this.i;
        String str4 = this.j;
        StringBuilder sbE = ng.e(i, "ChequeResponse(id=", ", purchaseDateTime=", str, ", totalSum=");
        sbE.append(i2);
        sbE.append(", qrCode=");
        sbE.append(str2);
        sbE.append(", isPersonalDataRequired=");
        sbE.append(bool);
        sbE.append(", shop=");
        sbE.append(uu7Var);
        sbE.append(", promotion_info=");
        sbE.append(aVar);
        sbE.append(", items=");
        sbE.append(list);
        sbE.append(", inn=");
        return dg.c(sbE, str3, ", nameLegalFace=", str4, ")");
    }

    public jh1(int i, String str, int i2, String str2, Boolean bool, uu7 uu7Var, a aVar, List<gi6> list, String str3, String str4) {
        str.getClass();
        uu7Var.getClass();
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = str2;
        this.e = bool;
        this.f = uu7Var;
        this.g = aVar;
        this.h = list;
        this.i = str3;
        this.j = str4;
    }
}
