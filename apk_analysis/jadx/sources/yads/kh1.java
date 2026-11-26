package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kh1 implements qv5 {
    public final tq3 a;

    public kh1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final eh1 a(ys4 ys4Var, mh1 mh1Var, JSONObject jSONObject) {
        zw2 zw2Var = mh1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = mh1Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = mh1Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = lh1.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = mh1Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        zw2 zw2Var5 = mh1Var.e;
        m36 m36Var = lh1.l;
        nl3 nl3Var = f11.d;
        as2 as2VarB = qq3.b(ys4Var, zw2Var5, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        zw2 zw2Var6 = mh1Var.f;
        m36 m36Var2 = lh1.m;
        nl3 nl3Var2 = h11.d;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var6, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        zw2 zw2Var7 = mh1Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = lh1.r;
        as2 as2Var = lh1.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var7, jSONObject, "alpha", r36Var, nl3Var3, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var8 = mh1Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var8, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var9 = mh1Var.i;
        tq3 tq3Var6 = this.a;
        b31 b31Var = (b31) qq3.b(ys4Var, zw2Var9, jSONObject, "aspect", tq3Var6.E1, tq3Var6.C1);
        zw2 zw2Var10 = mh1Var.j;
        tq3 tq3Var7 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var10, jSONObject, "background", tq3Var7.H1, tq3Var7.F1);
        zw2 zw2Var11 = mh1Var.k;
        tq3 tq3Var8 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var11, jSONObject, "border", tq3Var8.N1, tq3Var8.L1);
        zw2 zw2Var12 = mh1Var.l;
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var = lh1.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var12, jSONObject, "capture_focus_on_action", o36Var, nl3Var4, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var13 = mh1Var.m;
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var13, jSONObject, "column_span", s36Var, nl3Var5, lh1.s);
        zw2 zw2Var14 = mh1Var.n;
        m36 m36Var3 = lh1.n;
        xr2 xr2Var2 = lh1.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var14, jSONObject, "content_alignment_horizontal", m36Var3, nl3Var, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var15 = mh1Var.o;
        m36 m36Var4 = lh1.o;
        xr2 xr2Var3 = lh1.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var15, jSONObject, "content_alignment_vertical", m36Var4, nl3Var2, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var16 = mh1Var.p;
        tq3 tq3Var9 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var16, jSONObject, "disappear_actions", tq3Var9.Q2, tq3Var9.O2);
        zw2 zw2Var17 = mh1Var.q;
        tq3 tq3Var10 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var17, jSONObject, "doubletap_actions", tq3Var10.m1, tq3Var10.k1);
        zw2 zw2Var18 = mh1Var.r;
        tq3 tq3Var11 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var18, jSONObject, "extensions", tq3Var11.c3, tq3Var11.a3);
        zw2 zw2Var19 = mh1Var.s;
        tq3 tq3Var12 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var19, jSONObject, "focus", tq3Var12.A3, tq3Var12.y3);
        zw2 zw2Var20 = mh1Var.t;
        tq3 tq3Var13 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var20, jSONObject, "functions", tq3Var13.J3, tq3Var13.H3);
        as2 as2VarA5 = qq3.a(ys4Var, mh1Var.u, jSONObject, "gif_url", w36.e, bt4.b);
        zw2 zw2Var21 = mh1Var.v;
        tq3 tq3Var14 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var21, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var14.V6, tq3Var14.T6);
        if (x02Var == null) {
            x02Var = lh1.f;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var22 = mh1Var.w;
        tq3 tq3Var15 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var22, jSONObject, "hover_end_actions", tq3Var15.m1, tq3Var15.k1);
        zw2 zw2Var23 = mh1Var.x;
        tq3 tq3Var16 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var23, jSONObject, "hover_start_actions", tq3Var16.m1, tq3Var16.k1);
        String str = (String) qq3.a(ys4Var, mh1Var.y, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var24 = mh1Var.z;
        tq3 tq3Var17 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var24, jSONObject, "layout_provider", tq3Var17.L4, tq3Var17.J4);
        zw2 zw2Var25 = mh1Var.A;
        tq3 tq3Var18 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var25, jSONObject, "longtap_actions", tq3Var18.m1, tq3Var18.k1);
        zw2 zw2Var26 = mh1Var.B;
        tq3 tq3Var19 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var26, jSONObject, "margins", tq3Var19.Z2, tq3Var19.X2);
        zw2 zw2Var27 = mh1Var.C;
        tq3 tq3Var20 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var27, jSONObject, "paddings", tq3Var20.Z2, tq3Var20.X2);
        zw2 zw2Var28 = mh1Var.D;
        p36 p36Var = w36.f;
        nl3 nl3Var6 = bt4.a;
        xr2 xr2Var4 = lh1.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var28, jSONObject, "placeholder_color", p36Var, nl3Var6, xr2Var4);
        as2 as2Var5 = as2VarA6 == null ? xr2Var4 : as2VarA6;
        zw2 zw2Var29 = mh1Var.E;
        xr2 xr2Var5 = lh1.h;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var29, jSONObject, "preload_required", o36Var, nl3Var4, xr2Var5);
        as2 as2Var6 = as2VarA7 == null ? xr2Var5 : as2VarA7;
        zw2 zw2Var30 = mh1Var.F;
        tq3 tq3Var21 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var30, jSONObject, "press_end_actions", tq3Var21.m1, tq3Var21.k1);
        zw2 zw2Var31 = mh1Var.G;
        tq3 tq3Var22 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var31, jSONObject, "press_start_actions", tq3Var22.m1, tq3Var22.k1);
        zw2 zw2Var32 = mh1Var.H;
        u36 u36Var = w36.c;
        as2 as2VarB4 = qq3.b(ys4Var, zw2Var32, jSONObject, "preview", u36Var);
        as2 as2VarB5 = qq3.b(ys4Var, mh1Var.I, jSONObject, "reuse_id", u36Var);
        as2 as2VarB6 = qq3.b(ys4Var, mh1Var.J, jSONObject, "row_span", s36Var, nl3Var5, lh1.t);
        zw2 zw2Var33 = mh1Var.K;
        m36 m36Var5 = lh1.p;
        nl3 nl3Var7 = vi1.d;
        xr2 xr2Var6 = lh1.i;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var33, jSONObject, "scale", m36Var5, nl3Var7, xr2Var6);
        as2 as2Var7 = as2VarA8 == null ? xr2Var6 : as2VarA8;
        zw2 zw2Var34 = mh1Var.L;
        tq3 tq3Var23 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var34, jSONObject, "selected_actions", tq3Var23.m1, tq3Var23.k1);
        zw2 zw2Var35 = mh1Var.M;
        tq3 tq3Var24 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var35, jSONObject, "tooltips", tq3Var24.Q8, tq3Var24.O8);
        zw2 zw2Var36 = mh1Var.N;
        tq3 tq3Var25 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var36, jSONObject, "transform", tq3Var25.T8, tq3Var25.R8);
        zw2 zw2Var37 = mh1Var.O;
        tq3 tq3Var26 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var37, jSONObject, "transition_change", tq3Var26.W1, tq3Var26.U1);
        zw2 zw2Var38 = mh1Var.P;
        tq3 tq3Var27 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var38, jSONObject, "transition_in", tq3Var27.B1, tq3Var27.z1);
        zw2 zw2Var39 = mh1Var.Q;
        tq3 tq3Var28 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var39, jSONObject, "transition_out", tq3Var28.B1, tq3Var28.z1);
        List listA = qq3.a(ys4Var, mh1Var.R, jSONObject, pd2.d, lh1.u);
        zw2 zw2Var40 = mh1Var.S;
        tq3 tq3Var29 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var40, jSONObject, "variable_triggers", tq3Var29.W8, tq3Var29.U8);
        zw2 zw2Var41 = mh1Var.T;
        tq3 tq3Var30 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var41, jSONObject, "variables", tq3Var30.c9, tq3Var30.a9);
        zw2 zw2Var42 = mh1Var.U;
        m36 m36Var6 = lh1.q;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var8 = lh1.j;
        as2 as2VarA9 = qq3.a(ys4Var, zw2Var42, jSONObject, "visibility", m36Var6, nl3Var8, as2Var8);
        if (as2VarA9 != null) {
            as2Var8 = as2VarA9;
        }
        zw2 zw2Var43 = mh1Var.V;
        tq3 tq3Var31 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var43, jSONObject, "visibility_action", tq3Var31.o9, tq3Var31.m9);
        zw2 zw2Var44 = mh1Var.W;
        tq3 tq3Var32 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var44, jSONObject, "visibility_actions", tq3Var32.o9, tq3Var32.m9);
        zw2 zw2Var45 = mh1Var.X;
        tq3 tq3Var33 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var45, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var33.V6, tq3Var33.T6);
        if (x02Var3 == null) {
            x02Var3 = lh1.k;
        }
        return new eh1(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, b31Var, listC3, f51Var, as2Var2, as2VarB3, as2Var3, as2Var4, listC4, listC5, listC6, hf1Var, listC7, as2VarA5, x02Var2, listC8, listC9, str, to1Var, listC10, yc1Var, yc1Var2, as2Var5, as2Var6, listC11, listC12, as2VarB4, as2VarB5, as2VarB6, as2Var7, listC13, listC14, bd2Var, j61Var, s21Var, s21Var2, listA, listC15, listC16, as2Var8, si2Var, listC17, x02Var3);
    }
}
