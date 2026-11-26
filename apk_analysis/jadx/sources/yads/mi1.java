package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mi1 implements qv5 {
    public final tq3 a;

    public mi1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final zh1 a(ys4 ys4Var, wi1 wi1Var, JSONObject jSONObject) {
        zw2 zw2Var = wi1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = wi1Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = wi1Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = ni1.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = wi1Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        zw2 zw2Var5 = wi1Var.e;
        m36 m36Var = ni1.n;
        nl3 nl3Var = f11.d;
        as2 as2VarB = qq3.b(ys4Var, zw2Var5, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        zw2 zw2Var6 = wi1Var.f;
        m36 m36Var2 = ni1.o;
        nl3 nl3Var2 = h11.d;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var6, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        zw2 zw2Var7 = wi1Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = ni1.u;
        as2 as2Var = ni1.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var7, jSONObject, "alpha", r36Var, nl3Var3, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var8 = wi1Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var8, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var9 = wi1Var.i;
        tq3 tq3Var6 = this.a;
        od1 od1Var = (od1) qq3.b(ys4Var, zw2Var9, jSONObject, "appearance_animation", tq3Var6.f3, tq3Var6.d3);
        zw2 zw2Var10 = wi1Var.j;
        tq3 tq3Var7 = this.a;
        b31 b31Var = (b31) qq3.b(ys4Var, zw2Var10, jSONObject, "aspect", tq3Var7.E1, tq3Var7.C1);
        zw2 zw2Var11 = wi1Var.k;
        tq3 tq3Var8 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var11, jSONObject, "background", tq3Var8.H1, tq3Var8.F1);
        zw2 zw2Var12 = wi1Var.l;
        tq3 tq3Var9 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var12, jSONObject, "border", tq3Var9.N1, tq3Var9.L1);
        zw2 zw2Var13 = wi1Var.m;
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var = ni1.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var13, jSONObject, "capture_focus_on_action", o36Var, nl3Var4, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var14 = wi1Var.n;
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var14, jSONObject, "column_span", s36Var, nl3Var5, ni1.v);
        zw2 zw2Var15 = wi1Var.o;
        m36 m36Var3 = ni1.p;
        xr2 xr2Var2 = ni1.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var15, jSONObject, "content_alignment_horizontal", m36Var3, nl3Var, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var16 = wi1Var.p;
        m36 m36Var4 = ni1.q;
        xr2 xr2Var3 = ni1.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var16, jSONObject, "content_alignment_vertical", m36Var4, nl3Var2, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var17 = wi1Var.q;
        tq3 tq3Var10 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var17, jSONObject, "disappear_actions", tq3Var10.Q2, tq3Var10.O2);
        zw2 zw2Var18 = wi1Var.r;
        tq3 tq3Var11 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var18, jSONObject, "doubletap_actions", tq3Var11.m1, tq3Var11.k1);
        zw2 zw2Var19 = wi1Var.s;
        tq3 tq3Var12 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var19, jSONObject, "extensions", tq3Var12.c3, tq3Var12.a3);
        zw2 zw2Var20 = wi1Var.t;
        tq3 tq3Var13 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var20, jSONObject, "filters", tq3Var13.l3, tq3Var13.j3);
        zw2 zw2Var21 = wi1Var.u;
        tq3 tq3Var14 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var21, jSONObject, "focus", tq3Var14.A3, tq3Var14.y3);
        zw2 zw2Var22 = wi1Var.v;
        tq3 tq3Var15 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var22, jSONObject, "functions", tq3Var15.J3, tq3Var15.H3);
        zw2 zw2Var23 = wi1Var.w;
        tq3 tq3Var16 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var23, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var16.V6, tq3Var16.T6);
        if (x02Var == null) {
            x02Var = ni1.f;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var24 = wi1Var.x;
        xr2 xr2Var4 = ni1.g;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var24, jSONObject, "high_priority_preview_show", o36Var, nl3Var4, xr2Var4);
        as2 as2Var5 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        zw2 zw2Var25 = wi1Var.y;
        tq3 tq3Var17 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var25, jSONObject, "hover_end_actions", tq3Var17.m1, tq3Var17.k1);
        zw2 zw2Var26 = wi1Var.z;
        tq3 tq3Var18 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var26, jSONObject, "hover_start_actions", tq3Var18.m1, tq3Var18.k1);
        String str = (String) qq3.a(ys4Var, wi1Var.A, jSONObject, TtmlNode.ATTR_ID);
        as2 as2VarA6 = qq3.a(ys4Var, wi1Var.B, jSONObject, "image_url", w36.e, bt4.b);
        zw2 zw2Var27 = wi1Var.C;
        tq3 tq3Var19 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var27, jSONObject, "layout_provider", tq3Var19.L4, tq3Var19.J4);
        zw2 zw2Var28 = wi1Var.D;
        tq3 tq3Var20 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var28, jSONObject, "longtap_actions", tq3Var20.m1, tq3Var20.k1);
        zw2 zw2Var29 = wi1Var.E;
        tq3 tq3Var21 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var29, jSONObject, "margins", tq3Var21.Z2, tq3Var21.X2);
        zw2 zw2Var30 = wi1Var.F;
        tq3 tq3Var22 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var30, jSONObject, "paddings", tq3Var22.Z2, tq3Var22.X2);
        zw2 zw2Var31 = wi1Var.G;
        p36 p36Var = w36.f;
        nl3 nl3Var6 = bt4.a;
        xr2 xr2Var5 = ni1.h;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var31, jSONObject, "placeholder_color", p36Var, nl3Var6, xr2Var5);
        as2 as2Var6 = as2VarA7 == null ? xr2Var5 : as2VarA7;
        zw2 zw2Var32 = wi1Var.H;
        xr2 xr2Var6 = ni1.i;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var32, jSONObject, "preload_required", o36Var, nl3Var4, xr2Var6);
        as2 as2Var7 = as2VarA8 == null ? xr2Var6 : as2VarA8;
        zw2 zw2Var33 = wi1Var.I;
        tq3 tq3Var23 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var33, jSONObject, "press_end_actions", tq3Var23.m1, tq3Var23.k1);
        zw2 zw2Var34 = wi1Var.J;
        tq3 tq3Var24 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var34, jSONObject, "press_start_actions", tq3Var24.m1, tq3Var24.k1);
        zw2 zw2Var35 = wi1Var.K;
        u36 u36Var = w36.c;
        as2 as2VarB4 = qq3.b(ys4Var, zw2Var35, jSONObject, "preview", u36Var);
        as2 as2VarB5 = qq3.b(ys4Var, wi1Var.L, jSONObject, "reuse_id", u36Var);
        as2 as2VarB6 = qq3.b(ys4Var, wi1Var.M, jSONObject, "row_span", s36Var, nl3Var5, ni1.w);
        zw2 zw2Var36 = wi1Var.N;
        m36 m36Var5 = ni1.r;
        nl3 nl3Var7 = vi1.d;
        xr2 xr2Var7 = ni1.j;
        as2 as2VarA9 = qq3.a(ys4Var, zw2Var36, jSONObject, "scale", m36Var5, nl3Var7, xr2Var7);
        as2 as2Var8 = as2VarA9 == null ? xr2Var7 : as2VarA9;
        zw2 zw2Var37 = wi1Var.O;
        tq3 tq3Var25 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var37, jSONObject, "selected_actions", tq3Var25.m1, tq3Var25.k1);
        as2 as2VarB7 = qq3.b(ys4Var, wi1Var.P, jSONObject, "tint_color", p36Var, nl3Var6);
        zw2 zw2Var38 = wi1Var.Q;
        m36 m36Var6 = ni1.s;
        nl3 nl3Var8 = y41.d;
        xr2 xr2Var8 = ni1.k;
        as2 as2VarA10 = qq3.a(ys4Var, zw2Var38, jSONObject, "tint_mode", m36Var6, nl3Var8, xr2Var8);
        as2 as2Var9 = as2VarA10 == null ? xr2Var8 : as2VarA10;
        zw2 zw2Var39 = wi1Var.R;
        tq3 tq3Var26 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var39, jSONObject, "tooltips", tq3Var26.Q8, tq3Var26.O8);
        zw2 zw2Var40 = wi1Var.S;
        tq3 tq3Var27 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var40, jSONObject, "transform", tq3Var27.T8, tq3Var27.R8);
        zw2 zw2Var41 = wi1Var.T;
        tq3 tq3Var28 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var41, jSONObject, "transition_change", tq3Var28.W1, tq3Var28.U1);
        zw2 zw2Var42 = wi1Var.U;
        tq3 tq3Var29 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var42, jSONObject, "transition_in", tq3Var29.B1, tq3Var29.z1);
        zw2 zw2Var43 = wi1Var.V;
        tq3 tq3Var30 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var43, jSONObject, "transition_out", tq3Var30.B1, tq3Var30.z1);
        List listA = qq3.a(ys4Var, wi1Var.W, jSONObject, pd2.d, ni1.x);
        zw2 zw2Var44 = wi1Var.X;
        tq3 tq3Var31 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var44, jSONObject, "variable_triggers", tq3Var31.W8, tq3Var31.U8);
        zw2 zw2Var45 = wi1Var.Y;
        tq3 tq3Var32 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var45, jSONObject, "variables", tq3Var32.c9, tq3Var32.a9);
        zw2 zw2Var46 = wi1Var.Z;
        m36 m36Var7 = ni1.t;
        nl3 nl3Var9 = ri2.d;
        as2 as2Var10 = ni1.l;
        as2 as2VarA11 = qq3.a(ys4Var, zw2Var46, jSONObject, "visibility", m36Var7, nl3Var9, as2Var10);
        if (as2VarA11 != null) {
            as2Var10 = as2VarA11;
        }
        zw2 zw2Var47 = wi1Var.a0;
        tq3 tq3Var33 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var47, jSONObject, "visibility_action", tq3Var33.o9, tq3Var33.m9);
        zw2 zw2Var48 = wi1Var.b0;
        tq3 tq3Var34 = this.a;
        List listC18 = qq3.c(ys4Var, zw2Var48, jSONObject, "visibility_actions", tq3Var34.o9, tq3Var34.m9);
        zw2 zw2Var49 = wi1Var.c0;
        tq3 tq3Var35 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var49, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var35.V6, tq3Var35.T6);
        if (x02Var3 == null) {
            x02Var3 = ni1.m;
        }
        return new zh1(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, od1Var, b31Var, listC3, f51Var, as2Var2, as2VarB3, as2Var3, as2Var4, listC4, listC5, listC6, listC7, hf1Var, listC8, x02Var2, as2Var5, listC9, listC10, str, as2VarA6, to1Var, listC11, yc1Var, yc1Var2, as2Var6, as2Var7, listC12, listC13, as2VarB4, as2VarB5, as2VarB6, as2Var8, listC14, as2VarB7, as2Var9, listC15, bd2Var, j61Var, s21Var, s21Var2, listA, listC16, listC17, as2Var10, si2Var, listC18, x02Var3);
    }
}
