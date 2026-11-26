package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class d91 implements qv5 {
    public final tq3 a;

    public d91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final j81 a(ys4 ys4Var, k91 k91Var, JSONObject jSONObject) {
        zw2 zw2Var = k91Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = k91Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = k91Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = e91.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = k91Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        as2 as2VarB = qq3.b(ys4Var, k91Var.e, jSONObject, "alignment_horizontal", e91.n, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, k91Var.f, jSONObject, "alignment_vertical", e91.o, h11.d);
        zw2 zw2Var5 = k91Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = e91.u;
        xr2 xr2Var = e91.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var5, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var6 = k91Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var6, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var7 = k91Var.i;
        tq3 tq3Var6 = this.a;
        b31 b31Var = (b31) qq3.b(ys4Var, zw2Var7, jSONObject, "aspect", tq3Var6.E1, tq3Var6.C1);
        zw2 zw2Var8 = k91Var.j;
        tq3 tq3Var7 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var8, jSONObject, "background", tq3Var7.H1, tq3Var7.F1);
        zw2 zw2Var9 = k91Var.k;
        tq3 tq3Var8 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var9, jSONObject, "border", tq3Var8.N1, tq3Var8.L1);
        zw2 zw2Var10 = k91Var.l;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = e91.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var10, jSONObject, "capture_focus_on_action", o36Var, nl3Var2, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var11 = k91Var.m;
        xr2 xr2Var3 = e91.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var11, jSONObject, "clip_to_bounds", o36Var, nl3Var2, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var12 = k91Var.n;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var12, jSONObject, "column_span", s36Var, nl3Var3, e91.v);
        zw2 zw2Var13 = k91Var.o;
        m36 m36Var = e91.p;
        nl3 nl3Var4 = m91.d;
        xr2 xr2Var4 = e91.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var13, jSONObject, "content_alignment_horizontal", m36Var, nl3Var4, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        zw2 zw2Var14 = k91Var.p;
        m36 m36Var2 = e91.q;
        nl3 nl3Var5 = o91.d;
        xr2 xr2Var5 = e91.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var14, jSONObject, "content_alignment_vertical", m36Var2, nl3Var5, xr2Var5);
        as2 as2Var5 = as2VarA5 == null ? xr2Var5 : as2VarA5;
        zw2 zw2Var15 = k91Var.q;
        tq3 tq3Var9 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var15, jSONObject, "disappear_actions", tq3Var9.Q2, tq3Var9.O2);
        zw2 zw2Var16 = k91Var.r;
        tq3 tq3Var10 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var16, jSONObject, "doubletap_actions", tq3Var10.m1, tq3Var10.k1);
        zw2 zw2Var17 = k91Var.s;
        tq3 tq3Var11 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var17, jSONObject, "extensions", tq3Var11.c3, tq3Var11.a3);
        zw2 zw2Var18 = k91Var.t;
        tq3 tq3Var12 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var18, jSONObject, "focus", tq3Var12.A3, tq3Var12.y3);
        zw2 zw2Var19 = k91Var.u;
        tq3 tq3Var13 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var19, jSONObject, "functions", tq3Var13.J3, tq3Var13.H3);
        zw2 zw2Var20 = k91Var.v;
        tq3 tq3Var14 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var20, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var14.V6, tq3Var14.T6);
        if (x02Var == null) {
            x02Var = e91.g;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var21 = k91Var.w;
        tq3 tq3Var15 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var21, jSONObject, "hover_end_actions", tq3Var15.m1, tq3Var15.k1);
        zw2 zw2Var22 = k91Var.x;
        tq3 tq3Var16 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var22, jSONObject, "hover_start_actions", tq3Var16.m1, tq3Var16.k1);
        String str = (String) qq3.a(ys4Var, k91Var.y, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var23 = k91Var.z;
        tq3 tq3Var17 = this.a;
        j71 j71Var = (j71) qq3.b(ys4Var, zw2Var23, jSONObject, "item_builder", tq3Var17.f2, tq3Var17.d2);
        zw2 zw2Var24 = k91Var.A;
        l66 l66Var2 = e91.w;
        xr2 xr2Var6 = e91.h;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var24, jSONObject, "item_spacing", s36Var, nl3Var3, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA6 == null ? xr2Var6 : as2VarA6;
        zw2 zw2Var25 = k91Var.B;
        tq3 tq3Var18 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var25, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var18.u9, tq3Var18.s9);
        zw2 zw2Var26 = k91Var.C;
        m36 m36Var3 = e91.r;
        nl3 nl3Var6 = f81.d;
        xr2 xr2Var7 = e91.i;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var26, jSONObject, "layout_mode", m36Var3, nl3Var6, xr2Var7);
        as2 as2Var7 = as2VarA7 == null ? xr2Var7 : as2VarA7;
        zw2 zw2Var27 = k91Var.D;
        tq3 tq3Var19 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var27, jSONObject, "layout_provider", tq3Var19.L4, tq3Var19.J4);
        zw2 zw2Var28 = k91Var.E;
        tq3 tq3Var20 = this.a;
        i81 i81Var = (i81) qq3.b(ys4Var, zw2Var28, jSONObject, "line_separator", tq3Var20.r2, tq3Var20.p2);
        zw2 zw2Var29 = k91Var.F;
        l66 l66Var3 = e91.x;
        as2 as2Var8 = e91.j;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var29, jSONObject, "line_spacing", s36Var, nl3Var3, l66Var3, as2Var8);
        if (as2VarA8 != null) {
            as2Var8 = as2VarA8;
        }
        zw2 zw2Var30 = k91Var.G;
        tq3 tq3Var21 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var30, jSONObject, "longtap_actions", tq3Var21.m1, tq3Var21.k1);
        zw2 zw2Var31 = k91Var.H;
        tq3 tq3Var22 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var31, jSONObject, "margins", tq3Var22.Z2, tq3Var22.X2);
        zw2 zw2Var32 = k91Var.I;
        m36 m36Var4 = e91.s;
        nl3 nl3Var7 = h81.d;
        xr2 xr2Var8 = e91.k;
        as2 as2VarA9 = qq3.a(ys4Var, zw2Var32, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var4, nl3Var7, xr2Var8);
        as2 as2Var9 = as2VarA9 == null ? xr2Var8 : as2VarA9;
        zw2 zw2Var33 = k91Var.J;
        tq3 tq3Var23 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var33, jSONObject, "paddings", tq3Var23.Z2, tq3Var23.X2);
        zw2 zw2Var34 = k91Var.K;
        tq3 tq3Var24 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var34, jSONObject, "press_end_actions", tq3Var24.m1, tq3Var24.k1);
        zw2 zw2Var35 = k91Var.L;
        tq3 tq3Var25 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var35, jSONObject, "press_start_actions", tq3Var25.m1, tq3Var25.k1);
        as2 as2VarB4 = qq3.b(ys4Var, k91Var.M, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, k91Var.N, jSONObject, "row_span", s36Var, nl3Var3, e91.y);
        zw2 zw2Var36 = k91Var.O;
        tq3 tq3Var26 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var36, jSONObject, "selected_actions", tq3Var26.m1, tq3Var26.k1);
        zw2 zw2Var37 = k91Var.P;
        tq3 tq3Var27 = this.a;
        i81 i81Var2 = (i81) qq3.b(ys4Var, zw2Var37, jSONObject, "separator", tq3Var27.r2, tq3Var27.p2);
        zw2 zw2Var38 = k91Var.Q;
        tq3 tq3Var28 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var38, jSONObject, "tooltips", tq3Var28.Q8, tq3Var28.O8);
        zw2 zw2Var39 = k91Var.R;
        tq3 tq3Var29 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var39, jSONObject, "transform", tq3Var29.T8, tq3Var29.R8);
        zw2 zw2Var40 = k91Var.S;
        tq3 tq3Var30 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var40, jSONObject, "transition_change", tq3Var30.W1, tq3Var30.U1);
        zw2 zw2Var41 = k91Var.T;
        tq3 tq3Var31 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var41, jSONObject, "transition_in", tq3Var31.B1, tq3Var31.z1);
        zw2 zw2Var42 = k91Var.U;
        tq3 tq3Var32 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var42, jSONObject, "transition_out", tq3Var32.B1, tq3Var32.z1);
        List listA = qq3.a(ys4Var, k91Var.V, jSONObject, pd2.d, e91.z);
        zw2 zw2Var43 = k91Var.W;
        tq3 tq3Var33 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var43, jSONObject, "variable_triggers", tq3Var33.W8, tq3Var33.U8);
        zw2 zw2Var44 = k91Var.X;
        tq3 tq3Var34 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var44, jSONObject, "variables", tq3Var34.c9, tq3Var34.a9);
        zw2 zw2Var45 = k91Var.Y;
        m36 m36Var5 = e91.t;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var10 = e91.l;
        as2 as2VarA10 = qq3.a(ys4Var, zw2Var45, jSONObject, "visibility", m36Var5, nl3Var8, as2Var10);
        if (as2VarA10 != null) {
            as2Var10 = as2VarA10;
        }
        zw2 zw2Var46 = k91Var.Z;
        tq3 tq3Var35 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var46, jSONObject, "visibility_action", tq3Var35.o9, tq3Var35.m9);
        zw2 zw2Var47 = k91Var.a0;
        tq3 tq3Var36 = this.a;
        List listC18 = qq3.c(ys4Var, zw2Var47, jSONObject, "visibility_actions", tq3Var36.o9, tq3Var36.m9);
        zw2 zw2Var48 = k91Var.b0;
        tq3 tq3Var37 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var48, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var37.V6, tq3Var37.T6);
        if (x02Var3 == null) {
            x02Var3 = e91.m;
        }
        return new j81(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, b31Var, listC3, f51Var, as2Var2, as2Var3, as2VarB3, as2Var4, as2Var5, listC4, listC5, listC6, hf1Var, listC7, x02Var2, listC8, listC9, str, j71Var, as2Var6, listC10, as2Var7, to1Var, i81Var, as2Var8, listC11, yc1Var, as2Var9, yc1Var2, listC12, listC13, as2VarB4, as2VarB5, listC14, i81Var2, listC15, bd2Var, j61Var, s21Var, s21Var2, listA, listC16, listC17, as2Var10, si2Var, listC18, x02Var3);
    }
}
