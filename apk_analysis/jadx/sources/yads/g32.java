package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g32 implements qv5 {
    public final tq3 a;

    public g32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final z22 a(ys4 ys4Var, t32 t32Var, JSONObject jSONObject) {
        zw2 zw2Var = t32Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = t32Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = t32Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = h32.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = t32Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        as2 as2VarB = qq3.b(ys4Var, t32Var.e, jSONObject, "alignment_horizontal", h32.i, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, t32Var.f, jSONObject, "alignment_vertical", h32.j, h11.d);
        zw2 zw2Var5 = t32Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = h32.m;
        as2 as2Var = h32.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var5, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var6 = t32Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var6, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var7 = t32Var.i;
        tq3 tq3Var6 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "background", tq3Var6.H1, tq3Var6.F1);
        zw2 zw2Var8 = t32Var.j;
        tq3 tq3Var7 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var8, jSONObject, "border", tq3Var7.N1, tq3Var7.L1);
        zw2 zw2Var9 = t32Var.k;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var = h32.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var9, jSONObject, "capture_focus_on_action", o36Var, nl3Var2, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var10 = t32Var.l;
        xr2 xr2Var2 = h32.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var10, jSONObject, "clip_to_bounds", o36Var, nl3Var2, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var11 = t32Var.m;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var11, jSONObject, "column_span", s36Var, nl3Var3, h32.n);
        zw2 zw2Var12 = t32Var.n;
        u36 u36Var = w36.c;
        as2 as2VarB4 = qq3.b(ys4Var, zw2Var12, jSONObject, "default_state_id", u36Var);
        zw2 zw2Var13 = t32Var.o;
        tq3 tq3Var8 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var13, jSONObject, "disappear_actions", tq3Var8.Q2, tq3Var8.O2);
        String str = (String) qq3.a(ys4Var, t32Var.p, jSONObject, "div_id");
        zw2 zw2Var14 = t32Var.q;
        tq3 tq3Var9 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var14, jSONObject, "doubletap_actions", tq3Var9.m1, tq3Var9.k1);
        zw2 zw2Var15 = t32Var.r;
        tq3 tq3Var10 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var15, jSONObject, "extensions", tq3Var10.c3, tq3Var10.a3);
        zw2 zw2Var16 = t32Var.s;
        tq3 tq3Var11 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var16, jSONObject, "focus", tq3Var11.A3, tq3Var11.y3);
        zw2 zw2Var17 = t32Var.t;
        tq3 tq3Var12 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var17, jSONObject, "functions", tq3Var12.J3, tq3Var12.H3);
        zw2 zw2Var18 = t32Var.u;
        tq3 tq3Var13 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var18, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var13.V6, tq3Var13.T6);
        if (x02Var == null) {
            x02Var = h32.e;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var19 = t32Var.v;
        tq3 tq3Var14 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var19, jSONObject, "hover_end_actions", tq3Var14.m1, tq3Var14.k1);
        zw2 zw2Var20 = t32Var.w;
        tq3 tq3Var15 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var20, jSONObject, "hover_start_actions", tq3Var15.m1, tq3Var15.k1);
        String str2 = (String) qq3.a(ys4Var, t32Var.x, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var21 = t32Var.y;
        tq3 tq3Var16 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var21, jSONObject, "layout_provider", tq3Var16.L4, tq3Var16.J4);
        zw2 zw2Var22 = t32Var.z;
        tq3 tq3Var17 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var22, jSONObject, "longtap_actions", tq3Var17.m1, tq3Var17.k1);
        zw2 zw2Var23 = t32Var.A;
        tq3 tq3Var18 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var23, jSONObject, "margins", tq3Var18.Z2, tq3Var18.X2);
        zw2 zw2Var24 = t32Var.B;
        tq3 tq3Var19 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var24, jSONObject, "paddings", tq3Var19.Z2, tq3Var19.X2);
        zw2 zw2Var25 = t32Var.C;
        tq3 tq3Var20 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var25, jSONObject, "press_end_actions", tq3Var20.m1, tq3Var20.k1);
        zw2 zw2Var26 = t32Var.D;
        tq3 tq3Var21 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var26, jSONObject, "press_start_actions", tq3Var21.m1, tq3Var21.k1);
        as2 as2VarB5 = qq3.b(ys4Var, t32Var.E, jSONObject, "reuse_id", u36Var);
        as2 as2VarB6 = qq3.b(ys4Var, t32Var.F, jSONObject, "row_span", s36Var, nl3Var3, h32.o);
        zw2 zw2Var27 = t32Var.G;
        tq3 tq3Var22 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var27, jSONObject, "selected_actions", tq3Var22.m1, tq3Var22.k1);
        String str3 = (String) qq3.a(ys4Var, t32Var.H, jSONObject, "state_id_variable");
        zw2 zw2Var28 = t32Var.I;
        tq3 tq3Var23 = this.a;
        List listA = qq3.a(ys4Var, zw2Var28, jSONObject, "states", tq3Var23.q7, tq3Var23.o7, h32.p);
        zw2 zw2Var29 = t32Var.J;
        tq3 tq3Var24 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var29, jSONObject, "tooltips", tq3Var24.Q8, tq3Var24.O8);
        zw2 zw2Var30 = t32Var.K;
        tq3 tq3Var25 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var30, jSONObject, "transform", tq3Var25.T8, tq3Var25.R8);
        zw2 zw2Var31 = t32Var.L;
        m36 m36Var = h32.k;
        nl3 nl3Var4 = nd2.d;
        xr2 xr2Var3 = h32.f;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var31, jSONObject, "transition_animation_selector", m36Var, nl3Var4, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var32 = t32Var.M;
        tq3 tq3Var26 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var32, jSONObject, "transition_change", tq3Var26.W1, tq3Var26.U1);
        zw2 zw2Var33 = t32Var.N;
        tq3 tq3Var27 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var33, jSONObject, "transition_in", tq3Var27.B1, tq3Var27.z1);
        zw2 zw2Var34 = t32Var.O;
        tq3 tq3Var28 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var34, jSONObject, "transition_out", tq3Var28.B1, tq3Var28.z1);
        List listA2 = qq3.a(ys4Var, t32Var.P, jSONObject, pd2.d, h32.q);
        zw2 zw2Var35 = t32Var.Q;
        tq3 tq3Var29 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var35, jSONObject, "variable_triggers", tq3Var29.W8, tq3Var29.U8);
        zw2 zw2Var36 = t32Var.R;
        tq3 tq3Var30 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var36, jSONObject, "variables", tq3Var30.c9, tq3Var30.a9);
        zw2 zw2Var37 = t32Var.S;
        m36 m36Var2 = h32.l;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var5 = h32.g;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var37, jSONObject, "visibility", m36Var2, nl3Var5, as2Var5);
        if (as2VarA5 != null) {
            as2Var5 = as2VarA5;
        }
        zw2 zw2Var38 = t32Var.T;
        tq3 tq3Var31 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var38, jSONObject, "visibility_action", tq3Var31.o9, tq3Var31.m9);
        zw2 zw2Var39 = t32Var.U;
        tq3 tq3Var32 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var39, jSONObject, "visibility_actions", tq3Var32.o9, tq3Var32.m9);
        zw2 zw2Var40 = t32Var.V;
        tq3 tq3Var33 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var40, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var33.V6, tq3Var33.T6);
        if (x02Var3 == null) {
            x02Var3 = h32.h;
        }
        return new z22(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, listC3, f51Var, as2Var2, as2Var3, as2VarB3, as2VarB4, listC4, str, listC5, listC6, hf1Var, listC7, x02Var2, listC8, listC9, str2, to1Var, listC10, yc1Var, yc1Var2, listC11, listC12, as2VarB5, as2VarB6, listC13, str3, listA, listC14, bd2Var, as2Var4, j61Var, s21Var, s21Var2, listA2, listC15, listC16, as2Var5, si2Var, listC17, x02Var3);
    }
}
