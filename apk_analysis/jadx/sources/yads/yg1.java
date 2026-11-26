package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yg1 implements qv5 {
    public final tq3 a;

    public yg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final og1 a(ys4 ys4Var, bh1 bh1Var, JSONObject jSONObject) {
        zw2 zw2Var = bh1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, bh1Var.b, jSONObject, "alignment_horizontal", zg1.l, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, bh1Var.c, jSONObject, "alignment_vertical", zg1.m, h11.d);
        zw2 zw2Var2 = bh1Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = zg1.s;
        xr2 xr2Var = zg1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = bh1Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = bh1Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = bh1Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = bh1Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_count", s36Var, nl3Var2, zg1.t);
        as2 as2VarB4 = qq3.b(ys4Var, bh1Var.i, jSONObject, "column_span", s36Var, nl3Var2, zg1.u);
        zw2 zw2Var7 = bh1Var.j;
        m36 m36Var = zg1.n;
        nl3 nl3Var3 = hg1.d;
        xr2 xr2Var2 = zg1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var7, jSONObject, "cross_content_alignment", m36Var, nl3Var3, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarB5 = qq3.b(ys4Var, bh1Var.k, jSONObject, "cross_spacing", s36Var, nl3Var2, zg1.v);
        zw2 zw2Var8 = bh1Var.l;
        l66 l66Var2 = zg1.w;
        xr2 xr2Var3 = zg1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var8, jSONObject, "default_item", s36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var9 = bh1Var.m;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var9, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var10 = bh1Var.n;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var10, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var11 = bh1Var.o;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var11, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var12 = bh1Var.p;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var12, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var13 = bh1Var.q;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var13, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = zg1.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, bh1Var.r, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var14 = bh1Var.s;
        tq3 tq3Var10 = this.a;
        j71 j71Var = (j71) qq3.b(ys4Var, zw2Var14, jSONObject, "item_builder", tq3Var10.f2, tq3Var10.d2);
        zw2 zw2Var15 = bh1Var.t;
        l66 l66Var3 = zg1.x;
        as2 as2Var4 = zg1.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var15, jSONObject, "item_spacing", s36Var, nl3Var2, l66Var3, as2Var4);
        if (as2VarA4 != null) {
            as2Var4 = as2VarA4;
        }
        zw2 zw2Var16 = bh1Var.u;
        tq3 tq3Var11 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var16, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var11.u9, tq3Var11.s9);
        zw2 zw2Var17 = bh1Var.v;
        tq3 tq3Var12 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var17, jSONObject, "layout_provider", tq3Var12.L4, tq3Var12.J4);
        zw2 zw2Var18 = bh1Var.w;
        tq3 tq3Var13 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var18, jSONObject, "margins", tq3Var13.Z2, tq3Var13.X2);
        zw2 zw2Var19 = bh1Var.x;
        m36 m36Var2 = zg1.o;
        nl3 nl3Var4 = jg1.d;
        xr2 xr2Var4 = zg1.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var19, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var2, nl3Var4, xr2Var4);
        as2 as2Var5 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        zw2 zw2Var20 = bh1Var.y;
        tq3 tq3Var14 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var20, jSONObject, "paddings", tq3Var14.Z2, tq3Var14.X2);
        zw2 zw2Var21 = bh1Var.z;
        o36 o36Var = w36.a;
        nl3 nl3Var5 = bt4.c;
        xr2 xr2Var5 = zg1.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var21, jSONObject, "restrict_parent_scroll", o36Var, nl3Var5, xr2Var5);
        as2 as2Var6 = as2VarA6 == null ? xr2Var5 : as2VarA6;
        as2 as2VarB6 = qq3.b(ys4Var, bh1Var.A, jSONObject, "reuse_id", w36.c);
        as2 as2VarB7 = qq3.b(ys4Var, bh1Var.B, jSONObject, "row_span", s36Var, nl3Var2, zg1.y);
        zw2 zw2Var22 = bh1Var.C;
        m36 m36Var3 = zg1.p;
        nl3 nl3Var6 = lg1.d;
        xr2 xr2Var6 = zg1.h;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var22, jSONObject, "scroll_mode", m36Var3, nl3Var6, xr2Var6);
        as2 as2Var7 = as2VarA7 == null ? xr2Var6 : as2VarA7;
        zw2 zw2Var23 = bh1Var.D;
        m36 m36Var4 = zg1.q;
        nl3 nl3Var7 = ng1.d;
        xr2 xr2Var7 = zg1.i;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var23, jSONObject, "scrollbar", m36Var4, nl3Var7, xr2Var7);
        as2 as2Var8 = as2VarA8 == null ? xr2Var7 : as2VarA8;
        zw2 zw2Var24 = bh1Var.E;
        tq3 tq3Var15 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var24, jSONObject, "selected_actions", tq3Var15.m1, tq3Var15.k1);
        zw2 zw2Var25 = bh1Var.F;
        tq3 tq3Var16 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var25, jSONObject, "tooltips", tq3Var16.Q8, tq3Var16.O8);
        zw2 zw2Var26 = bh1Var.G;
        tq3 tq3Var17 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var26, jSONObject, "transform", tq3Var17.T8, tq3Var17.R8);
        zw2 zw2Var27 = bh1Var.H;
        tq3 tq3Var18 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var27, jSONObject, "transition_change", tq3Var18.W1, tq3Var18.U1);
        zw2 zw2Var28 = bh1Var.I;
        tq3 tq3Var19 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var28, jSONObject, "transition_in", tq3Var19.B1, tq3Var19.z1);
        zw2 zw2Var29 = bh1Var.J;
        tq3 tq3Var20 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var29, jSONObject, "transition_out", tq3Var20.B1, tq3Var20.z1);
        List listA = qq3.a(ys4Var, bh1Var.K, jSONObject, pd2.d, zg1.z);
        zw2 zw2Var30 = bh1Var.L;
        tq3 tq3Var21 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var30, jSONObject, "variable_triggers", tq3Var21.W8, tq3Var21.U8);
        zw2 zw2Var31 = bh1Var.M;
        tq3 tq3Var22 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var31, jSONObject, "variables", tq3Var22.c9, tq3Var22.a9);
        zw2 zw2Var32 = bh1Var.N;
        m36 m36Var5 = zg1.r;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var9 = zg1.j;
        as2 as2VarA9 = qq3.a(ys4Var, zw2Var32, jSONObject, "visibility", m36Var5, nl3Var8, as2Var9);
        if (as2VarA9 != null) {
            as2Var9 = as2VarA9;
        }
        zw2 zw2Var33 = bh1Var.O;
        tq3 tq3Var23 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var33, jSONObject, "visibility_action", tq3Var23.o9, tq3Var23.m9);
        zw2 zw2Var34 = bh1Var.P;
        tq3 tq3Var24 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var34, jSONObject, "visibility_actions", tq3Var24.o9, tq3Var24.m9);
        zw2 zw2Var35 = bh1Var.Q;
        tq3 tq3Var25 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var35, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var25.V6, tq3Var25.T6);
        if (x02Var3 == null) {
            x02Var3 = zg1.k;
        }
        return new og1(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, as2VarB4, as2Var2, as2VarB5, as2Var3, listC3, listC4, hf1Var, listC5, x02Var2, str, j71Var, as2Var4, listC6, to1Var, yc1Var, as2Var5, yc1Var2, as2Var6, as2VarB6, as2VarB7, as2Var7, as2Var8, listC7, listC8, bd2Var, j61Var, s21Var, s21Var2, listA, listC9, listC10, as2Var9, si2Var, listC11, x02Var3);
    }
}
