package yads;

import defpackage.kv2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ro5 implements Comparable {
    public static final g12 w = g12.SP;
    public final int b;
    public final int c;
    public final d82 d;
    public final int e;
    public final String f;
    public final String g;
    public final Integer h;
    public final g12 i;
    public final tf1 j;
    public final Integer k;
    public final JSONObject l;
    public final Double m;
    public final Integer n;
    public final bx3 o;
    public final bp1 p;
    public final Integer q;
    public final yj5 r;
    public final Integer s;
    public final Integer t;
    public final Integer u;
    public final bp1 v;

    public ro5(int i, int i2, d82 d82Var, int i3, String str, String str2, Integer num, g12 g12Var, tf1 tf1Var, Integer num2, JSONObject jSONObject, Double d, Integer num3, bx3 bx3Var, bp1 bp1Var, Integer num4, yj5 yj5Var, Integer num5, Integer num6, Integer num7, bp1 bp1Var2) {
        this.b = i;
        this.c = i2;
        this.d = d82Var;
        this.e = i3;
        this.f = str;
        this.g = str2;
        this.h = num;
        this.i = g12Var;
        this.j = tf1Var;
        this.k = num2;
        this.l = jSONObject;
        this.m = d;
        this.n = num3;
        this.o = bx3Var;
        this.p = bp1Var;
        this.q = num4;
        this.r = yj5Var;
        this.s = num5;
        this.t = num6;
        this.u = num7;
        this.v = bp1Var2;
    }

    public final ro5 a(ro5 ro5Var, int i, int i2) {
        d82 d82Var = ro5Var.d;
        if (d82Var == null) {
            d82Var = this.d;
        }
        int i3 = ro5Var.e;
        if (i3 == 0) {
            i3 = this.e;
        }
        String str = ro5Var.f;
        if (str == null) {
            str = this.f;
        }
        String str2 = ro5Var.g;
        if (str2 == null) {
            str2 = this.g;
        }
        Integer num = ro5Var.h;
        if (num == null) {
            num = this.h;
        }
        g12 g12Var = ro5Var.i;
        if (g12Var == w) {
            g12Var = this.i;
        }
        tf1 tf1Var = ro5Var.j;
        if (tf1Var == null) {
            tf1Var = this.j;
        }
        Integer num2 = ro5Var.k;
        if (num2 == null) {
            num2 = this.k;
        }
        JSONObject jSONObject = ro5Var.l;
        if (jSONObject == null) {
            jSONObject = this.l;
        }
        Double d = ro5Var.m;
        if (d == null) {
            d = this.m;
        }
        Integer num3 = ro5Var.n;
        if (num3 == null) {
            num3 = this.n;
        }
        bx3 bx3Var = ro5Var.o;
        if (bx3Var == null) {
            bx3Var = this.o;
        }
        bp1 bp1Var = ro5Var.p;
        if (bp1Var == null) {
            bp1Var = this.p;
        }
        Integer num4 = ro5Var.q;
        if (num4 == null) {
            num4 = this.q;
        }
        Integer num5 = num4;
        yj5 yj5Var = ro5Var.r;
        if (yj5Var == null) {
            yj5Var = this.r;
        }
        yj5 yj5Var2 = yj5Var;
        Integer num6 = ro5Var.s;
        if (num6 == null) {
            num6 = this.s;
        }
        Integer num7 = num6 != null ? ro5Var.t : this.t;
        Integer num8 = num6 != null ? ro5Var.u : this.u;
        bp1 bp1Var2 = ro5Var.v;
        if (bp1Var2 == null) {
            bp1Var2 = this.v;
        }
        return new ro5(i, i2, d82Var, i3, str, str2, num, g12Var, tf1Var, num2, jSONObject, d, num3, bx3Var, bp1Var, num5, yj5Var2, num6, num7, num8, bp1Var2);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b - ((ro5) obj).b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ro5)) {
            return false;
        }
        ro5 ro5Var = (ro5) obj;
        return this.b == ro5Var.b && this.c == ro5Var.c && this.d == ro5Var.d && this.e == ro5Var.e && defpackage.aa4.e(this.f, ro5Var.f) && defpackage.aa4.e(this.g, ro5Var.g) && defpackage.aa4.e(this.h, ro5Var.h) && this.i == ro5Var.i && this.j == ro5Var.j && defpackage.aa4.e(this.k, ro5Var.k) && defpackage.aa4.e(this.l, ro5Var.l) && defpackage.aa4.e(this.m, ro5Var.m) && defpackage.aa4.e(this.n, ro5Var.n) && defpackage.aa4.e(this.o, ro5Var.o) && this.p == ro5Var.p && defpackage.aa4.e(this.q, ro5Var.q) && defpackage.aa4.e(this.r, ro5Var.r) && defpackage.aa4.e(this.s, ro5Var.s) && defpackage.aa4.e(this.t, ro5Var.t) && defpackage.aa4.e(this.u, ro5Var.u) && this.v == ro5Var.v;
    }

    public final int hashCode() {
        int iA = i96.a(this.c, Integer.hashCode(this.b) * 31, 31);
        d82 d82Var = this.d;
        int iA2 = i96.a(this.e, (iA + (d82Var == null ? 0 : d82Var.hashCode())) * 31, 31);
        String str = this.f;
        int iHashCode = (iA2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.h;
        int iHashCode3 = (this.i.hashCode() + ((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31)) * 31;
        tf1 tf1Var = this.j;
        int iHashCode4 = (iHashCode3 + (tf1Var == null ? 0 : tf1Var.hashCode())) * 31;
        Integer num2 = this.k;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        JSONObject jSONObject = this.l;
        int iHashCode6 = (iHashCode5 + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
        Double d = this.m;
        int iHashCode7 = (iHashCode6 + (d == null ? 0 : d.hashCode())) * 31;
        Integer num3 = this.n;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        bx3 bx3Var = this.o;
        int iHashCode9 = (iHashCode8 + (bx3Var == null ? 0 : bx3Var.hashCode())) * 31;
        bp1 bp1Var = this.p;
        int iHashCode10 = (iHashCode9 + (bp1Var == null ? 0 : bp1Var.hashCode())) * 31;
        Integer num4 = this.q;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        yj5 yj5Var = this.r;
        int iHashCode12 = (iHashCode11 + (yj5Var == null ? 0 : yj5Var.hashCode())) * 31;
        Integer num5 = this.s;
        int iHashCode13 = (iHashCode12 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.t;
        int iHashCode14 = (iHashCode13 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.u;
        int iHashCode15 = (iHashCode14 + (num7 == null ? 0 : num7.hashCode())) * 31;
        bp1 bp1Var2 = this.v;
        return iHashCode15 + (bp1Var2 != null ? bp1Var2.hashCode() : 0);
    }

    public final String toString() {
        int i = this.b;
        int i2 = this.c;
        d82 d82Var = this.d;
        int i3 = this.e;
        String str = this.f;
        String str2 = this.g;
        Integer num = this.h;
        g12 g12Var = this.i;
        tf1 tf1Var = this.j;
        Integer num2 = this.k;
        JSONObject jSONObject = this.l;
        Double d = this.m;
        Integer num3 = this.n;
        bx3 bx3Var = this.o;
        bp1 bp1Var = this.p;
        Integer num4 = this.q;
        yj5 yj5Var = this.r;
        Integer num5 = this.s;
        Integer num6 = this.t;
        Integer num7 = this.u;
        bp1 bp1Var2 = this.v;
        StringBuilder sbF = defpackage.bg.f(i, i2, "SpanData(start=", ", end=", ", alignmentVertical=");
        sbF.append(d82Var);
        sbF.append(", baselineOffset=");
        sbF.append(i3);
        sbF.append(", fontFamily=");
        kv2.c(sbF, str, ", fontFeatureSettings=", str2, ", fontSize=");
        sbF.append(num);
        sbF.append(", fontSizeUnit=");
        sbF.append(g12Var);
        sbF.append(", fontWeight=");
        sbF.append(tf1Var);
        sbF.append(", fontWeightValue=");
        sbF.append(num2);
        sbF.append(", fontVariationSettings=");
        sbF.append(jSONObject);
        sbF.append(", letterSpacing=");
        sbF.append(d);
        sbF.append(", lineHeight=");
        sbF.append(num3);
        sbF.append(", mask=");
        sbF.append(bx3Var);
        sbF.append(", strike=");
        sbF.append(bp1Var);
        sbF.append(", textColor=");
        sbF.append(num4);
        sbF.append(", textShadow=");
        sbF.append(yj5Var);
        sbF.append(", topOffset=");
        sbF.append(num5);
        sbF.append(", topOffsetStart=");
        sbF.append(num6);
        sbF.append(", topOffsetEnd=");
        sbF.append(num7);
        sbF.append(", underline=");
        sbF.append(bp1Var2);
        sbF.append(")");
        return sbF.toString();
    }

    public final int a() {
        return this.b;
    }
}
