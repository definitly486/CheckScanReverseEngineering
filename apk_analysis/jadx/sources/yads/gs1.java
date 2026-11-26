package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gs1 implements qv5 {
    public final tq3 a;

    public gs1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ur1 a(ys4 ys4Var, at1 at1Var, JSONObject jSONObject) {
        zw2 zw2Var = at1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, at1Var.b, jSONObject, "alignment_horizontal", hs1.l, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, at1Var.c, jSONObject, "alignment_vertical", hs1.m, h11.d);
        zw2 zw2Var2 = at1Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = hs1.r;
        xr2 xr2Var = hs1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = at1Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = at1Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = at1Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = at1Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, hs1.s);
        zw2 zw2Var7 = at1Var.i;
        m36 m36Var = hs1.n;
        nl3 nl3Var3 = rr1.d;
        xr2 xr2Var2 = hs1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var7, jSONObject, "cross_axis_alignment", m36Var, nl3Var3, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var8 = at1Var.j;
        l66 l66Var2 = hs1.t;
        as2 as2Var3 = hs1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var8, jSONObject, "default_item", s36Var, nl3Var2, l66Var2, as2Var3);
        if (as2VarA3 != null) {
            as2Var3 = as2VarA3;
        }
        zw2 zw2Var9 = at1Var.k;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var9, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var10 = at1Var.l;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var10, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var11 = at1Var.m;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var11, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var12 = at1Var.n;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var12, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var13 = at1Var.o;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var13, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = hs1.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, at1Var.p, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var14 = at1Var.q;
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var3 = hs1.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var14, jSONObject, "infinite_scroll", o36Var, nl3Var4, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var15 = at1Var.r;
        tq3 tq3Var10 = this.a;
        j71 j71Var = (j71) qq3.b(ys4Var, zw2Var15, jSONObject, "item_builder", tq3Var10.f2, tq3Var10.d2);
        zw2 zw2Var16 = at1Var.s;
        tq3 tq3Var11 = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var16, jSONObject, "item_spacing", tq3Var11.x3, tq3Var11.v3);
        if (af1Var == null) {
            af1Var = hs1.f;
        }
        af1 af1Var2 = af1Var;
        zw2 zw2Var17 = at1Var.t;
        tq3 tq3Var12 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var17, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var12.u9, tq3Var12.s9);
        zw2 zw2Var18 = at1Var.u;
        tq3 tq3Var13 = this.a;
        ls1 ls1Var = (ls1) qq3.a(ys4Var, zw2Var18, jSONObject, "layout_mode", tq3Var13.v5, tq3Var13.t5);
        zw2 zw2Var19 = at1Var.v;
        tq3 tq3Var14 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var19, jSONObject, "layout_provider", tq3Var14.L4, tq3Var14.J4);
        zw2 zw2Var20 = at1Var.w;
        tq3 tq3Var15 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var20, jSONObject, "margins", tq3Var15.Z2, tq3Var15.X2);
        zw2 zw2Var21 = at1Var.x;
        m36 m36Var2 = hs1.o;
        nl3 nl3Var5 = tr1.d;
        xr2 xr2Var4 = hs1.g;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var21, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var2, nl3Var5, xr2Var4);
        as2 as2Var5 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        zw2 zw2Var22 = at1Var.y;
        tq3 tq3Var16 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var22, jSONObject, "paddings", tq3Var16.Z2, tq3Var16.X2);
        zw2 zw2Var23 = at1Var.z;
        tq3 tq3Var17 = this.a;
        xq1 xq1Var = (xq1) qq3.b(ys4Var, zw2Var23, jSONObject, "page_transformation", tq3Var17.s5, tq3Var17.q5);
        zw2 zw2Var24 = at1Var.A;
        xr2 xr2Var5 = hs1.h;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var24, jSONObject, "restrict_parent_scroll", o36Var, nl3Var4, xr2Var5);
        as2 as2Var6 = as2VarA6 == null ? xr2Var5 : as2VarA6;
        as2 as2VarB4 = qq3.b(ys4Var, at1Var.B, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, at1Var.C, jSONObject, "row_span", s36Var, nl3Var2, hs1.u);
        zw2 zw2Var25 = at1Var.D;
        m36 m36Var3 = hs1.p;
        xr2 xr2Var6 = hs1.i;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var25, jSONObject, "scroll_axis_alignment", m36Var3, nl3Var3, xr2Var6);
        as2 as2Var7 = as2VarA7 == null ? xr2Var6 : as2VarA7;
        zw2 zw2Var26 = at1Var.E;
        tq3 tq3Var18 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var26, jSONObject, "selected_actions", tq3Var18.m1, tq3Var18.k1);
        zw2 zw2Var27 = at1Var.F;
        tq3 tq3Var19 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var27, jSONObject, "tooltips", tq3Var19.Q8, tq3Var19.O8);
        zw2 zw2Var28 = at1Var.G;
        tq3 tq3Var20 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var28, jSONObject, "transform", tq3Var20.T8, tq3Var20.R8);
        zw2 zw2Var29 = at1Var.H;
        tq3 tq3Var21 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var29, jSONObject, "transition_change", tq3Var21.W1, tq3Var21.U1);
        zw2 zw2Var30 = at1Var.I;
        tq3 tq3Var22 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var30, jSONObject, "transition_in", tq3Var22.B1, tq3Var22.z1);
        zw2 zw2Var31 = at1Var.J;
        tq3 tq3Var23 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_out", tq3Var23.B1, tq3Var23.z1);
        List listA = qq3.a(ys4Var, at1Var.K, jSONObject, pd2.d, hs1.v);
        zw2 zw2Var32 = at1Var.L;
        tq3 tq3Var24 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var32, jSONObject, "variable_triggers", tq3Var24.W8, tq3Var24.U8);
        zw2 zw2Var33 = at1Var.M;
        tq3 tq3Var25 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var33, jSONObject, "variables", tq3Var25.c9, tq3Var25.a9);
        zw2 zw2Var34 = at1Var.N;
        m36 m36Var4 = hs1.q;
        nl3 nl3Var6 = ri2.d;
        as2 as2Var8 = hs1.j;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var34, jSONObject, "visibility", m36Var4, nl3Var6, as2Var8);
        if (as2VarA8 != null) {
            as2Var8 = as2VarA8;
        }
        zw2 zw2Var35 = at1Var.O;
        tq3 tq3Var26 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var35, jSONObject, "visibility_action", tq3Var26.o9, tq3Var26.m9);
        zw2 zw2Var36 = at1Var.P;
        tq3 tq3Var27 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var36, jSONObject, "visibility_actions", tq3Var27.o9, tq3Var27.m9);
        zw2 zw2Var37 = at1Var.Q;
        tq3 tq3Var28 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var37, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var28.V6, tq3Var28.T6);
        if (x02Var3 == null) {
            x02Var3 = hs1.k;
        }
        return new ur1(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, as2Var2, as2Var3, listC3, listC4, hf1Var, listC5, x02Var2, str, as2Var4, j71Var, af1Var2, listC6, ls1Var, to1Var, yc1Var, as2Var5, yc1Var2, xq1Var, as2Var6, as2VarB4, as2VarB5, as2Var7, listC7, listC8, bd2Var, j61Var, s21Var, s21Var2, listA, listC9, listC10, as2Var8, si2Var, listC11, x02Var3);
    }
}
