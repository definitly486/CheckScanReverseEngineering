package yads;

import androidx.core.provider.FontsContractCompat;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r62 implements ln0 {
    public final tq3 a;

    public r62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        xr2 xr2Var = u62.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "active_background_color", p36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        q36 q36Var = w36.h;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "active_font_variation_settings", q36Var);
        m36 m36Var = u62.l;
        nl3 nl3Var2 = tf1.d;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "active_font_weight", m36Var, nl3Var2);
        xr2 xr2Var2 = u62.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "active_text_color", p36Var, nl3Var, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        l66 l66Var2 = u62.q;
        xr2 xr2Var3 = u62.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "animation_duration", s36Var, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        m36 m36Var2 = u62.m;
        nl3 nl3Var4 = w52.d;
        xr2 xr2Var4 = u62.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "animation_type", m36Var2, nl3Var4, l66Var, xr2Var4);
        as2 as2Var4 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "corner_radius", s36Var, nl3Var3, u62.r, (as2) null);
        p91 p91Var = (p91) wq3.c(ys4Var, jSONObject, "corners_radius", this.a.s2);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "font_family", w36.c);
        l66 l66Var3 = u62.s;
        xr2 xr2Var5 = u62.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var3, l66Var3, xr2Var5);
        as2 as2Var5 = as2VarA7 == null ? xr2Var5 : as2VarA7;
        m36 m36Var3 = u62.n;
        nl3 nl3Var5 = g12.d;
        xr2 xr2Var6 = u62.f;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var3, nl3Var5, l66Var, xr2Var6);
        as2 as2Var6 = as2VarA8 == null ? xr2Var6 : as2VarA8;
        m36 m36Var4 = u62.o;
        xr2 xr2Var7 = u62.g;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, m36Var4, nl3Var2, l66Var, xr2Var7);
        as2 as2Var7 = as2VarA9 == null ? xr2Var7 : as2VarA9;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "inactive_background_color", p36Var, nl3Var);
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, "inactive_font_variation_settings", q36Var);
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "inactive_font_weight", u62.p, nl3Var2);
        xr2 xr2Var8 = u62.h;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "inactive_text_color", p36Var, nl3Var, l66Var, xr2Var8);
        as2 as2Var8 = as2VarA12 == null ? xr2Var8 : as2VarA12;
        l66 l66Var4 = u62.t;
        xr2 xr2Var9 = u62.i;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "item_spacing", s36Var, nl3Var3, l66Var4, xr2Var9);
        as2 as2Var9 = as2VarA13 == null ? xr2Var9 : as2VarA13;
        r36 r36Var = w36.d;
        nl3 nl3Var6 = bt4.d;
        xr2 xr2Var10 = u62.j;
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var6, l66Var, xr2Var10);
        as2 as2Var10 = as2VarA14 == null ? xr2Var10 : as2VarA14;
        as2 as2VarA15 = oq3.a(ys4Var, jSONObject, "line_height", s36Var, nl3Var3, u62.u, (as2) null);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        if (yc1Var == null) {
            yc1Var = u62.k;
        }
        return new x52(as2Var, as2VarB, as2VarA2, as2Var2, as2Var3, as2Var4, as2VarA6, p91Var, as2VarB2, as2Var5, as2Var6, as2Var7, as2VarA10, as2VarB3, as2VarA11, as2Var8, as2Var9, as2Var10, as2VarA15, yc1Var);
    }
}
