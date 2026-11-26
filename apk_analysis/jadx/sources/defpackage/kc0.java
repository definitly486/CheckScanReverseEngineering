package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class kc0 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("backgroundColor")
    private final String b;

    @bq7("description")
    private final String c;

    @bq7("descriptionColor")
    private final String d;

    @bq7("imageUrl")
    private final String e;

    @bq7("mainButton")
    private final lv0 f;

    @bq7("secondButton")
    private final lv0 g;

    @bq7("showIntervalHours")
    private final Integer h;

    @bq7("sort")
    private final Integer i;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String j;

    @bq7("titleColor")
    private final String k;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String l;

    @bq7("url")
    private final String m;

    @bq7("ordInfo")
    private final c06 n;

    @bq7("topText")
    private final String o;

    @bq7("topTextColor")
    private final String p;

    @bq7("bottomText")
    private final String q;

    @bq7("bottomTextColor")
    private final String r;

    @bq7("bottomBackgroundColor")
    private final String s;

    public kc0(int i, String str, String str2, String str3, String str4, lv0 lv0Var, lv0 lv0Var2, Integer num, Integer num2, String str5, String str6, String str7, String str8, c06 c06Var, String str9, String str10, String str11, String str12, String str13) {
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = lv0Var;
        this.g = lv0Var2;
        this.h = num;
        this.i = num2;
        this.j = str5;
        this.k = str6;
        this.l = str7;
        this.m = str8;
        this.n = c06Var;
        this.o = str9;
        this.p = str10;
        this.q = str11;
        this.r = str12;
        this.s = str13;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.e;
    }

    public final c06 c() {
        return this.n;
    }

    public final String d() {
        return this.j;
    }

    public final String e() {
        return this.m;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kc0)) {
            return false;
        }
        kc0 kc0Var = (kc0) obj;
        return this.a == kc0Var.a && aa4.e(this.b, kc0Var.b) && aa4.e(this.c, kc0Var.c) && aa4.e(this.d, kc0Var.d) && aa4.e(this.e, kc0Var.e) && aa4.e(this.f, kc0Var.f) && aa4.e(this.g, kc0Var.g) && aa4.e(this.h, kc0Var.h) && aa4.e(this.i, kc0Var.i) && aa4.e(this.j, kc0Var.j) && aa4.e(this.k, kc0Var.k) && aa4.e(this.l, kc0Var.l) && aa4.e(this.m, kc0Var.m) && aa4.e(this.n, kc0Var.n) && aa4.e(this.o, kc0Var.o) && aa4.e(this.p, kc0Var.p) && aa4.e(this.q, kc0Var.q) && aa4.e(this.r, kc0Var.r) && aa4.e(this.s, kc0Var.s);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        lv0 lv0Var = this.f;
        int iHashCode6 = (iHashCode5 + (lv0Var == null ? 0 : lv0Var.hashCode())) * 31;
        lv0 lv0Var2 = this.g;
        int iHashCode7 = (iHashCode6 + (lv0Var2 == null ? 0 : lv0Var2.hashCode())) * 31;
        Integer num = this.h;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.i;
        int iB = zg.b((iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31, 31, this.j);
        String str5 = this.k;
        int iHashCode9 = (iB + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        c06 c06Var = this.n;
        int iHashCode12 = (iHashCode11 + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        String str8 = this.o;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.p;
        int iHashCode14 = (iHashCode13 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.q;
        int iHashCode15 = (iHashCode14 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.r;
        int iHashCode16 = (iHashCode15 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.s;
        return iHashCode16 + (str12 != null ? str12.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        lv0 lv0Var = this.f;
        lv0 lv0Var2 = this.g;
        Integer num = this.h;
        Integer num2 = this.i;
        String str5 = this.j;
        String str6 = this.k;
        String str7 = this.l;
        String str8 = this.m;
        c06 c06Var = this.n;
        String str9 = this.o;
        String str10 = this.p;
        String str11 = this.q;
        String str12 = this.r;
        String str13 = this.s;
        StringBuilder sbE = ng.e(i, "BannerResponse(id=", ", backgroundColor=", str, ", description=");
        kv2.c(sbE, str2, ", descriptionColor=", str3, ", imageUrl=");
        sbE.append(str4);
        sbE.append(", mainButton=");
        sbE.append(lv0Var);
        sbE.append(", secondButton=");
        sbE.append(lv0Var2);
        sbE.append(", showIntervalHours=");
        sbE.append(num);
        sbE.append(", sort=");
        sbE.append(num2);
        sbE.append(", title=");
        sbE.append(str5);
        sbE.append(", titleColor=");
        kv2.c(sbE, str6, ", type=", str7, ", url=");
        sbE.append(str8);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", topText=");
        kv2.c(sbE, str9, ", topTextColor=", str10, ", bottomText=");
        kv2.c(sbE, str11, ", bottomTextColor=", str12, ", bottomBackgroundColor=");
        return me0.d(sbE, str13, ")");
    }
}
