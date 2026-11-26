package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k62 implements qv5 {
    public final tq3 a;

    public k62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final y52 a(ys4 ys4Var, y62 y62Var, JSONObject jSONObject) {
        zw2 zw2Var = y62Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, y62Var.b, jSONObject, "alignment_horizontal", l62.m, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, y62Var.c, jSONObject, "alignment_vertical", l62.n, h11.d);
        zw2 zw2Var2 = y62Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = l62.p;
        xr2 xr2Var = l62.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = y62Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = y62Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = y62Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = y62Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, l62.q);
        zw2 zw2Var7 = y62Var.i;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var8 = y62Var.j;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var2 = l62.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var8, jSONObject, "dynamic_height", o36Var, nl3Var3, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var9 = y62Var.k;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var9, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var10 = y62Var.l;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var10, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var11 = y62Var.m;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var11, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var12 = y62Var.n;
        xr2 xr2Var3 = l62.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var12, jSONObject, "has_separator", o36Var, nl3Var3, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var13 = y62Var.o;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var13, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = l62.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, y62Var.p, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var14 = y62Var.q;
        tq3 tq3Var10 = this.a;
        List listA = qq3.a(ys4Var, zw2Var14, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var10.U7, tq3Var10.S7, l62.r);
        zw2 zw2Var15 = y62Var.r;
        tq3 tq3Var11 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var15, jSONObject, "layout_provider", tq3Var11.L4, tq3Var11.J4);
        zw2 zw2Var16 = y62Var.s;
        tq3 tq3Var12 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var16, jSONObject, "margins", tq3Var12.Z2, tq3Var12.X2);
        zw2 zw2Var17 = y62Var.t;
        tq3 tq3Var13 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var17, jSONObject, "paddings", tq3Var13.Z2, tq3Var13.X2);
        zw2 zw2Var18 = y62Var.u;
        xr2 xr2Var4 = l62.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var18, jSONObject, "restrict_parent_scroll", o36Var, nl3Var3, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        as2 as2VarB4 = qq3.b(ys4Var, y62Var.v, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, y62Var.w, jSONObject, "row_span", s36Var, nl3Var2, l62.s);
        zw2 zw2Var19 = y62Var.x;
        tq3 tq3Var14 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var19, jSONObject, "selected_actions", tq3Var14.m1, tq3Var14.k1);
        zw2 zw2Var20 = y62Var.y;
        l66 l66Var2 = l62.t;
        as2 as2Var5 = l62.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var20, jSONObject, "selected_tab", s36Var, nl3Var2, l66Var2, as2Var5);
        if (as2VarA5 != null) {
            as2Var5 = as2VarA5;
        }
        zw2 zw2Var21 = y62Var.z;
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var5 = l62.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var21, jSONObject, "separator_color", p36Var, nl3Var4, xr2Var5);
        as2 as2Var6 = as2VarA6 == null ? xr2Var5 : as2VarA6;
        zw2 zw2Var22 = y62Var.A;
        tq3 tq3Var15 = this.a;
        yc1 yc1Var3 = (yc1) qq3.b(ys4Var, zw2Var22, jSONObject, "separator_paddings", tq3Var15.Z2, tq3Var15.X2);
        if (yc1Var3 == null) {
            yc1Var3 = l62.h;
        }
        yc1 yc1Var4 = yc1Var3;
        zw2 zw2Var23 = y62Var.B;
        xr2 xr2Var6 = l62.i;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var23, jSONObject, "switch_tabs_by_content_swipe_enabled", o36Var, nl3Var3, xr2Var6);
        as2 as2Var7 = as2VarA7 == null ? xr2Var6 : as2VarA7;
        zw2 zw2Var24 = y62Var.C;
        tq3 tq3Var16 = this.a;
        u52 u52Var = (u52) qq3.b(ys4Var, zw2Var24, jSONObject, "tab_title_delimiter", tq3Var16.R7, tq3Var16.P7);
        zw2 zw2Var25 = y62Var.D;
        tq3 tq3Var17 = this.a;
        x52 x52Var = (x52) qq3.b(ys4Var, zw2Var25, jSONObject, "tab_title_style", tq3Var17.O7, tq3Var17.M7);
        zw2 zw2Var26 = y62Var.E;
        tq3 tq3Var18 = this.a;
        yc1 yc1Var5 = (yc1) qq3.b(ys4Var, zw2Var26, jSONObject, "title_paddings", tq3Var18.Z2, tq3Var18.X2);
        if (yc1Var5 == null) {
            yc1Var5 = l62.j;
        }
        yc1 yc1Var6 = yc1Var5;
        zw2 zw2Var27 = y62Var.F;
        tq3 tq3Var19 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var27, jSONObject, "tooltips", tq3Var19.Q8, tq3Var19.O8);
        zw2 zw2Var28 = y62Var.G;
        tq3 tq3Var20 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var28, jSONObject, "transform", tq3Var20.T8, tq3Var20.R8);
        zw2 zw2Var29 = y62Var.H;
        tq3 tq3Var21 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var29, jSONObject, "transition_change", tq3Var21.W1, tq3Var21.U1);
        zw2 zw2Var30 = y62Var.I;
        tq3 tq3Var22 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var30, jSONObject, "transition_in", tq3Var22.B1, tq3Var22.z1);
        zw2 zw2Var31 = y62Var.J;
        tq3 tq3Var23 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_out", tq3Var23.B1, tq3Var23.z1);
        List listA2 = qq3.a(ys4Var, y62Var.K, jSONObject, pd2.d, l62.u);
        zw2 zw2Var32 = y62Var.L;
        tq3 tq3Var24 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var32, jSONObject, "variable_triggers", tq3Var24.W8, tq3Var24.U8);
        zw2 zw2Var33 = y62Var.M;
        tq3 tq3Var25 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var33, jSONObject, "variables", tq3Var25.c9, tq3Var25.a9);
        zw2 zw2Var34 = y62Var.N;
        m36 m36Var = l62.o;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var8 = l62.k;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var34, jSONObject, "visibility", m36Var, nl3Var5, as2Var8);
        if (as2VarA8 != null) {
            as2Var8 = as2VarA8;
        }
        zw2 zw2Var35 = y62Var.O;
        tq3 tq3Var26 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var35, jSONObject, "visibility_action", tq3Var26.o9, tq3Var26.m9);
        zw2 zw2Var36 = y62Var.P;
        tq3 tq3Var27 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var36, jSONObject, "visibility_actions", tq3Var27.o9, tq3Var27.m9);
        zw2 zw2Var37 = y62Var.Q;
        tq3 tq3Var28 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var37, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var28.V6, tq3Var28.T6);
        if (x02Var3 == null) {
            x02Var3 = l62.l;
        }
        return new y52(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, listC3, as2Var2, listC4, hf1Var, listC5, as2Var3, x02Var2, str, listA, to1Var, yc1Var, yc1Var2, as2Var4, as2VarB4, as2VarB5, listC6, as2Var5, as2Var6, yc1Var4, as2Var7, u52Var, x52Var, yc1Var6, listC7, bd2Var, j61Var, s21Var, s21Var2, listA2, listC8, listC9, as2Var8, si2Var, listC10, x02Var3);
    }
}
