package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zy1 implements qv5 {
    public final tq3 a;

    public zy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final uy1 a(ys4 ys4Var, fz1 fz1Var, JSONObject jSONObject) {
        zw2 zw2Var = fz1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, fz1Var.b, jSONObject, "alignment_horizontal", az1.j, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, fz1Var.c, jSONObject, "alignment_vertical", az1.k, h11.d);
        zw2 zw2Var2 = fz1Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = az1.o;
        xr2 xr2Var = az1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = fz1Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = fz1Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = fz1Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = fz1Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, az1.p);
        zw2 zw2Var7 = fz1Var.i;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var8 = fz1Var.j;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var8, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var9 = fz1Var.k;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var9, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var10 = fz1Var.l;
        u36 u36Var = w36.c;
        as2 as2VarB4 = qq3.b(ys4Var, zw2Var10, jSONObject, "font_family", u36Var);
        zw2 zw2Var11 = fz1Var.m;
        l66 l66Var2 = az1.q;
        as2 as2Var2 = az1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var11, jSONObject, "font_size", s36Var, nl3Var2, l66Var2, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        zw2 zw2Var12 = fz1Var.n;
        m36 m36Var = az1.l;
        nl3 nl3Var3 = g12.d;
        xr2 xr2Var2 = az1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var12, jSONObject, "font_size_unit", m36Var, nl3Var3, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        as2 as2VarB5 = qq3.b(ys4Var, fz1Var.o, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarB6 = qq3.b(ys4Var, fz1Var.p, jSONObject, FontsContractCompat.Columns.WEIGHT, az1.m, tf1.d);
        as2 as2VarB7 = qq3.b(ys4Var, fz1Var.q, jSONObject, "font_weight_value", s36Var, nl3Var2, az1.r);
        zw2 zw2Var13 = fz1Var.r;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var13, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var14 = fz1Var.s;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var14, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = az1.d;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var15 = fz1Var.t;
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var3 = az1.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var15, jSONObject, "hint_color", p36Var, nl3Var4, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        as2 as2VarB8 = qq3.b(ys4Var, fz1Var.u, jSONObject, "hint_text", u36Var);
        String str = (String) qq3.a(ys4Var, fz1Var.v, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var16 = fz1Var.w;
        tq3 tq3Var10 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var16, jSONObject, "layout_provider", tq3Var10.L4, tq3Var10.J4);
        zw2 zw2Var17 = fz1Var.x;
        xr2 xr2Var4 = az1.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var17, jSONObject, "letter_spacing", r36Var, nl3Var, xr2Var4);
        as2 as2Var5 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        as2 as2VarB9 = qq3.b(ys4Var, fz1Var.y, jSONObject, "line_height", s36Var, nl3Var2, az1.s);
        zw2 zw2Var18 = fz1Var.z;
        tq3 tq3Var11 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var18, jSONObject, "margins", tq3Var11.Z2, tq3Var11.X2);
        zw2 zw2Var19 = fz1Var.A;
        tq3 tq3Var12 = this.a;
        List listA = qq3.a(ys4Var, zw2Var19, jSONObject, "options", tq3Var12.A6, tq3Var12.y6, az1.t);
        zw2 zw2Var20 = fz1Var.B;
        tq3 tq3Var13 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var20, jSONObject, "paddings", tq3Var13.Z2, tq3Var13.X2);
        as2 as2VarB10 = qq3.b(ys4Var, fz1Var.C, jSONObject, "reuse_id", u36Var);
        as2 as2VarB11 = qq3.b(ys4Var, fz1Var.D, jSONObject, "row_span", s36Var, nl3Var2, az1.u);
        zw2 zw2Var21 = fz1Var.E;
        tq3 tq3Var14 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var21, jSONObject, "selected_actions", tq3Var14.m1, tq3Var14.k1);
        zw2 zw2Var22 = fz1Var.F;
        xr2 xr2Var5 = az1.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var22, jSONObject, "text_color", p36Var, nl3Var4, xr2Var5);
        as2 as2Var6 = as2VarA6 == null ? xr2Var5 : as2VarA6;
        zw2 zw2Var23 = fz1Var.G;
        tq3 tq3Var15 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var23, jSONObject, "tooltips", tq3Var15.Q8, tq3Var15.O8);
        zw2 zw2Var24 = fz1Var.H;
        tq3 tq3Var16 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var24, jSONObject, "transform", tq3Var16.T8, tq3Var16.R8);
        zw2 zw2Var25 = fz1Var.I;
        tq3 tq3Var17 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var25, jSONObject, "transition_change", tq3Var17.W1, tq3Var17.U1);
        zw2 zw2Var26 = fz1Var.J;
        tq3 tq3Var18 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var26, jSONObject, "transition_in", tq3Var18.B1, tq3Var18.z1);
        zw2 zw2Var27 = fz1Var.K;
        tq3 tq3Var19 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var27, jSONObject, "transition_out", tq3Var19.B1, tq3Var19.z1);
        List listA2 = qq3.a(ys4Var, fz1Var.L, jSONObject, pd2.d, az1.v);
        String str2 = (String) qq3.a(fz1Var.M, jSONObject, "value_variable");
        zw2 zw2Var28 = fz1Var.N;
        tq3 tq3Var20 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var28, jSONObject, "variable_triggers", tq3Var20.W8, tq3Var20.U8);
        zw2 zw2Var29 = fz1Var.O;
        tq3 tq3Var21 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var29, jSONObject, "variables", tq3Var21.c9, tq3Var21.a9);
        zw2 zw2Var30 = fz1Var.P;
        m36 m36Var2 = az1.n;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var7 = az1.h;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var30, jSONObject, "visibility", m36Var2, nl3Var5, as2Var7);
        if (as2VarA7 != null) {
            as2Var7 = as2VarA7;
        }
        zw2 zw2Var31 = fz1Var.Q;
        tq3 tq3Var22 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var31, jSONObject, "visibility_action", tq3Var22.o9, tq3Var22.m9);
        zw2 zw2Var32 = fz1Var.R;
        tq3 tq3Var23 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var32, jSONObject, "visibility_actions", tq3Var23.o9, tq3Var23.m9);
        zw2 zw2Var33 = fz1Var.S;
        tq3 tq3Var24 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var33, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var24.V6, tq3Var24.T6);
        if (x02Var3 == null) {
            x02Var3 = az1.i;
        }
        return new uy1(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, listC3, listC4, hf1Var, as2VarB4, as2Var2, as2Var3, as2VarB5, as2VarB6, as2VarB7, listC5, x02Var2, as2Var4, as2VarB8, str, to1Var, as2Var5, as2VarB9, yc1Var, listA, yc1Var2, as2VarB10, as2VarB11, listC6, as2Var6, listC7, bd2Var, j61Var, s21Var, s21Var2, listA2, str2, listC8, listC9, as2Var7, si2Var, listC10, x02Var3);
    }
}
