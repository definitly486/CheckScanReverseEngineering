package yads;

import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t62 implements qv5 {
    public final tq3 a;

    public t62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        x62 x62Var = (x62) xq3Var;
        zw2 zw2Var = x62Var.a;
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        xr2 xr2Var = u62.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "active_background_color", p36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var2 = x62Var.b;
        q36 q36Var = w36.h;
        as2 as2VarB = qq3.b(ys4Var, zw2Var2, jSONObject, "active_font_variation_settings", q36Var);
        zw2 zw2Var3 = x62Var.c;
        m36 m36Var = u62.l;
        nl3 nl3Var2 = tf1.d;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var3, jSONObject, "active_font_weight", m36Var, nl3Var2);
        zw2 zw2Var4 = x62Var.d;
        xr2 xr2Var2 = u62.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var4, jSONObject, "active_text_color", p36Var, nl3Var, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var5 = x62Var.e;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        l66 l66Var = u62.q;
        xr2 xr2Var3 = u62.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var5, jSONObject, "animation_duration", s36Var, nl3Var3, l66Var, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var6 = x62Var.f;
        m36 m36Var2 = u62.m;
        nl3 nl3Var4 = w52.d;
        xr2 xr2Var4 = u62.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, "animation_type", m36Var2, nl3Var4, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        as2 as2VarB3 = qq3.b(ys4Var, x62Var.g, jSONObject, "corner_radius", s36Var, nl3Var3, u62.r);
        zw2 zw2Var7 = x62Var.h;
        tq3 tq3Var = this.a;
        p91 p91Var = (p91) qq3.b(ys4Var, zw2Var7, jSONObject, "corners_radius", tq3Var.u2, tq3Var.s2);
        as2 as2VarB4 = qq3.b(ys4Var, x62Var.i, jSONObject, "font_family", w36.c);
        zw2 zw2Var8 = x62Var.j;
        l66 l66Var2 = u62.s;
        xr2 xr2Var5 = u62.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var8, jSONObject, "font_size", s36Var, nl3Var3, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA5 == null ? xr2Var5 : as2VarA5;
        zw2 zw2Var9 = x62Var.k;
        m36 m36Var3 = u62.n;
        nl3 nl3Var5 = g12.d;
        xr2 xr2Var6 = u62.f;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var9, jSONObject, "font_size_unit", m36Var3, nl3Var5, xr2Var6);
        as2 as2Var6 = as2VarA6 == null ? xr2Var6 : as2VarA6;
        zw2 zw2Var10 = x62Var.l;
        m36 m36Var4 = u62.o;
        xr2 xr2Var7 = u62.g;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var10, jSONObject, FontsContractCompat.Columns.WEIGHT, m36Var4, nl3Var2, xr2Var7);
        as2 as2Var7 = as2VarA7 == null ? xr2Var7 : as2VarA7;
        as2 as2VarB5 = qq3.b(ys4Var, x62Var.m, jSONObject, "inactive_background_color", p36Var, nl3Var);
        as2 as2VarB6 = qq3.b(ys4Var, x62Var.n, jSONObject, "inactive_font_variation_settings", q36Var);
        as2 as2VarB7 = qq3.b(ys4Var, x62Var.o, jSONObject, "inactive_font_weight", u62.p, nl3Var2);
        zw2 zw2Var11 = x62Var.p;
        xr2 xr2Var8 = u62.h;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var11, jSONObject, "inactive_text_color", p36Var, nl3Var, xr2Var8);
        as2 as2Var8 = as2VarA8 == null ? xr2Var8 : as2VarA8;
        zw2 zw2Var12 = x62Var.q;
        l66 l66Var3 = u62.t;
        as2 as2Var9 = u62.i;
        as2 as2VarA9 = qq3.a(ys4Var, zw2Var12, jSONObject, "item_spacing", s36Var, nl3Var3, l66Var3, as2Var9);
        if (as2VarA9 != null) {
            as2Var9 = as2VarA9;
        }
        zw2 zw2Var13 = x62Var.r;
        r36 r36Var = w36.d;
        nl3 nl3Var6 = bt4.d;
        xr2 xr2Var9 = u62.j;
        as2 as2VarA10 = qq3.a(ys4Var, zw2Var13, jSONObject, "letter_spacing", r36Var, nl3Var6, xr2Var9);
        as2 as2Var10 = as2VarA10 == null ? xr2Var9 : as2VarA10;
        as2 as2VarB8 = qq3.b(ys4Var, x62Var.s, jSONObject, "line_height", s36Var, nl3Var3, u62.u);
        zw2 zw2Var14 = x62Var.t;
        tq3 tq3Var2 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var14, jSONObject, "paddings", tq3Var2.Z2, tq3Var2.X2);
        if (yc1Var == null) {
            yc1Var = u62.k;
        }
        return new x52(as2Var, as2VarB, as2VarB2, as2Var2, as2Var3, as2Var4, as2VarB3, p91Var, as2VarB4, as2Var5, as2Var6, as2Var7, as2VarB5, as2VarB6, as2VarB7, as2Var8, as2Var9, as2Var10, as2VarB8, yc1Var);
    }
}
