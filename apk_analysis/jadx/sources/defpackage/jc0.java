package defpackage;

import android.graphics.Color;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class jc0 {

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
    private final kv0 f;

    @bq7("secondButton")
    private final kv0 g;

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

    @bq7("isRedesign")
    private final boolean t;

    public jc0(int i, String str, String str2, String str3, String str4, kv0 kv0Var, kv0 kv0Var2, Integer num, Integer num2, String str5, String str6, String str7, String str8, c06 c06Var, String str9, String str10, String str11, String str12, String str13, boolean z) {
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = kv0Var;
        this.g = kv0Var2;
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
        this.t = z;
    }

    public final String a() {
        return this.e;
    }

    public final hc0.a b() {
        String str = this.b;
        Integer numValueOf = str != null ? Integer.valueOf(Color.parseColor(str)) : null;
        String str2 = this.s;
        Integer numValueOf2 = str2 != null ? Integer.valueOf(Color.parseColor(str2)) : null;
        String str3 = this.q;
        String str4 = this.r;
        Integer numValueOf3 = str4 != null ? Integer.valueOf(Color.parseColor(str4)) : null;
        kv0 kv0Var = this.f;
        fw0 fw0VarA = kv0Var != null ? kv0Var.a() : null;
        String str5 = new String();
        int i = this.a;
        Integer num = this.h;
        long jIntValue = (num != null ? num.intValue() : 1L) * 3600000;
        String str6 = this.e;
        String str7 = this.d;
        Integer numValueOf4 = str7 != null ? Integer.valueOf(Color.parseColor(str7)) : null;
        kv0 kv0Var2 = this.g;
        fw0 fw0VarA2 = kv0Var2 != null ? kv0Var2.a() : null;
        String str8 = this.c;
        String str9 = this.j;
        String str10 = this.o;
        String str11 = this.p;
        Integer numValueOf5 = str11 != null ? Integer.valueOf(Color.parseColor(str11)) : null;
        c06 c06Var = this.n;
        b06 b06VarF = c06Var != null ? c06Var.f() : null;
        String str12 = this.m;
        if (str12 == null) {
            str12 = "";
        }
        String str13 = str12;
        String str14 = this.k;
        return new hc0.a(numValueOf, numValueOf2, str3, numValueOf3, fw0VarA, str5, i, jIntValue, str6, numValueOf4, fw0VarA2, str8, str9, str14 != null ? Integer.valueOf(Color.parseColor(str14)) : null, str10, numValueOf5, b06VarF, str13, this.t);
    }

    public final hc0.b c() {
        int i = this.a;
        String str = this.m;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        String str3 = this.e;
        c06 c06Var = this.n;
        return new hc0.b(i, c06Var != null ? aa4.e(c06Var.c(), Boolean.TRUE) : false ? this.n.f() : null, str3, str2, this.j);
    }

    public final hc0.c d() {
        int i = this.a;
        String str = this.j;
        String str2 = this.c;
        String str3 = str2 == null ? "" : str2;
        kv0 kv0Var = this.f;
        fw0 fw0VarA = kv0Var != null ? kv0Var.a() : null;
        String str4 = this.e;
        String str5 = this.m;
        String str6 = str5 != null ? str5 : "";
        c06 c06Var = this.n;
        return new hc0.c(i, str4, str, str3, str6, fw0VarA, c06Var != null ? c06Var.f() : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jc0)) {
            return false;
        }
        jc0 jc0Var = (jc0) obj;
        return this.a == jc0Var.a && aa4.e(this.b, jc0Var.b) && aa4.e(this.c, jc0Var.c) && aa4.e(this.d, jc0Var.d) && aa4.e(this.e, jc0Var.e) && aa4.e(this.f, jc0Var.f) && aa4.e(this.g, jc0Var.g) && aa4.e(this.h, jc0Var.h) && aa4.e(this.i, jc0Var.i) && aa4.e(this.j, jc0Var.j) && aa4.e(this.k, jc0Var.k) && aa4.e(this.l, jc0Var.l) && aa4.e(this.m, jc0Var.m) && aa4.e(this.n, jc0Var.n) && aa4.e(this.o, jc0Var.o) && aa4.e(this.p, jc0Var.p) && aa4.e(this.q, jc0Var.q) && aa4.e(this.r, jc0Var.r) && aa4.e(this.s, jc0Var.s) && this.t == jc0Var.t;
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
        kv0 kv0Var = this.f;
        int iHashCode6 = (iHashCode5 + (kv0Var == null ? 0 : kv0Var.hashCode())) * 31;
        kv0 kv0Var2 = this.g;
        int iHashCode7 = (iHashCode6 + (kv0Var2 == null ? 0 : kv0Var2.hashCode())) * 31;
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
        return Boolean.hashCode(this.t) + ((iHashCode16 + (str12 != null ? str12.hashCode() : 0)) * 31);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        kv0 kv0Var = this.f;
        kv0 kv0Var2 = this.g;
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
        boolean z = this.t;
        StringBuilder sbE = ng.e(i, "BannerResponse(id=", ", backgroundColor=", str, ", description=");
        kv2.c(sbE, str2, ", descriptionColor=", str3, ", imageUrl=");
        sbE.append(str4);
        sbE.append(", mainButton=");
        sbE.append(kv0Var);
        sbE.append(", secondButton=");
        sbE.append(kv0Var2);
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
        sbE.append(str13);
        sbE.append(", isRedesign=");
        sbE.append(z);
        sbE.append(")");
        return sbE.toString();
    }
}
