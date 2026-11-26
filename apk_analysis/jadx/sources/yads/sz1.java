package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sz1 implements qv5 {
    public final tq3 a;

    public sz1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final kz1 a(ys4 ys4Var, vz1 vz1Var, JSONObject jSONObject) {
        zw2 zw2Var = vz1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = vz1Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = vz1Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = tz1.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = vz1Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        as2 as2VarB = qq3.b(ys4Var, vz1Var.e, jSONObject, "alignment_horizontal", tz1.g, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, vz1Var.f, jSONObject, "alignment_vertical", tz1.h, h11.d);
        zw2 zw2Var5 = vz1Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = tz1.j;
        as2 as2Var = tz1.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var5, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var6 = vz1Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var6, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var7 = vz1Var.i;
        tq3 tq3Var6 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "background", tq3Var6.H1, tq3Var6.F1);
        zw2 zw2Var8 = vz1Var.j;
        tq3 tq3Var7 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var8, jSONObject, "border", tq3Var7.N1, tq3Var7.L1);
        zw2 zw2Var9 = vz1Var.k;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var = tz1.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var9, jSONObject, "capture_focus_on_action", o36Var, nl3Var2, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var10 = vz1Var.l;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var10, jSONObject, "column_span", s36Var, nl3Var3, tz1.k);
        zw2 zw2Var11 = vz1Var.m;
        tq3 tq3Var8 = this.a;
        jz1 jz1Var = (jz1) qq3.b(ys4Var, zw2Var11, jSONObject, "delimiter_style", tq3Var8.G6, tq3Var8.E6);
        zw2 zw2Var12 = vz1Var.n;
        tq3 tq3Var9 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var12, jSONObject, "disappear_actions", tq3Var9.Q2, tq3Var9.O2);
        zw2 zw2Var13 = vz1Var.o;
        tq3 tq3Var10 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var13, jSONObject, "doubletap_actions", tq3Var10.m1, tq3Var10.k1);
        zw2 zw2Var14 = vz1Var.p;
        tq3 tq3Var11 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var14, jSONObject, "extensions", tq3Var11.c3, tq3Var11.a3);
        zw2 zw2Var15 = vz1Var.q;
        tq3 tq3Var12 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var15, jSONObject, "focus", tq3Var12.A3, tq3Var12.y3);
        zw2 zw2Var16 = vz1Var.r;
        tq3 tq3Var13 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var16, jSONObject, "functions", tq3Var13.J3, tq3Var13.H3);
        zw2 zw2Var17 = vz1Var.s;
        tq3 tq3Var14 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var17, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var14.V6, tq3Var14.T6);
        if (x02Var == null) {
            x02Var = tz1.d;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var18 = vz1Var.t;
        tq3 tq3Var15 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var18, jSONObject, "hover_end_actions", tq3Var15.m1, tq3Var15.k1);
        zw2 zw2Var19 = vz1Var.u;
        tq3 tq3Var16 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var19, jSONObject, "hover_start_actions", tq3Var16.m1, tq3Var16.k1);
        String str = (String) qq3.a(ys4Var, vz1Var.v, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var20 = vz1Var.w;
        tq3 tq3Var17 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var20, jSONObject, "layout_provider", tq3Var17.L4, tq3Var17.J4);
        zw2 zw2Var21 = vz1Var.x;
        tq3 tq3Var18 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var21, jSONObject, "longtap_actions", tq3Var18.m1, tq3Var18.k1);
        zw2 zw2Var22 = vz1Var.y;
        tq3 tq3Var19 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var22, jSONObject, "margins", tq3Var19.Z2, tq3Var19.X2);
        zw2 zw2Var23 = vz1Var.z;
        tq3 tq3Var20 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var23, jSONObject, "paddings", tq3Var20.Z2, tq3Var20.X2);
        zw2 zw2Var24 = vz1Var.A;
        tq3 tq3Var21 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var24, jSONObject, "press_end_actions", tq3Var21.m1, tq3Var21.k1);
        zw2 zw2Var25 = vz1Var.B;
        tq3 tq3Var22 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var25, jSONObject, "press_start_actions", tq3Var22.m1, tq3Var22.k1);
        as2 as2VarB4 = qq3.b(ys4Var, vz1Var.C, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, vz1Var.D, jSONObject, "row_span", s36Var, nl3Var3, tz1.l);
        zw2 zw2Var26 = vz1Var.E;
        tq3 tq3Var23 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var26, jSONObject, "selected_actions", tq3Var23.m1, tq3Var23.k1);
        zw2 zw2Var27 = vz1Var.F;
        tq3 tq3Var24 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var27, jSONObject, "tooltips", tq3Var24.Q8, tq3Var24.O8);
        zw2 zw2Var28 = vz1Var.G;
        tq3 tq3Var25 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var28, jSONObject, "transform", tq3Var25.T8, tq3Var25.R8);
        zw2 zw2Var29 = vz1Var.H;
        tq3 tq3Var26 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var29, jSONObject, "transition_change", tq3Var26.W1, tq3Var26.U1);
        zw2 zw2Var30 = vz1Var.I;
        tq3 tq3Var27 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var30, jSONObject, "transition_in", tq3Var27.B1, tq3Var27.z1);
        zw2 zw2Var31 = vz1Var.J;
        tq3 tq3Var28 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_out", tq3Var28.B1, tq3Var28.z1);
        List listA = qq3.a(ys4Var, vz1Var.K, jSONObject, pd2.d, tz1.m);
        zw2 zw2Var32 = vz1Var.L;
        tq3 tq3Var29 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var32, jSONObject, "variable_triggers", tq3Var29.W8, tq3Var29.U8);
        zw2 zw2Var33 = vz1Var.M;
        tq3 tq3Var30 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var33, jSONObject, "variables", tq3Var30.c9, tq3Var30.a9);
        zw2 zw2Var34 = vz1Var.N;
        m36 m36Var = tz1.i;
        nl3 nl3Var4 = ri2.d;
        as2 as2Var3 = tz1.e;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var34, jSONObject, "visibility", m36Var, nl3Var4, as2Var3);
        if (as2VarA3 != null) {
            as2Var3 = as2VarA3;
        }
        zw2 zw2Var35 = vz1Var.O;
        tq3 tq3Var31 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var35, jSONObject, "visibility_action", tq3Var31.o9, tq3Var31.m9);
        zw2 zw2Var36 = vz1Var.P;
        tq3 tq3Var32 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var36, jSONObject, "visibility_actions", tq3Var32.o9, tq3Var32.m9);
        zw2 zw2Var37 = vz1Var.Q;
        tq3 tq3Var33 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var37, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var33.V6, tq3Var33.T6);
        if (x02Var3 == null) {
            x02Var3 = tz1.f;
        }
        return new kz1(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, listC3, f51Var, as2Var2, as2VarB3, jz1Var, listC4, listC5, listC6, hf1Var, listC7, x02Var2, listC8, listC9, str, to1Var, listC10, yc1Var, yc1Var2, listC11, listC12, as2VarB4, as2VarB5, listC13, listC14, bd2Var, j61Var, s21Var, s21Var2, listA, listC15, listC16, as2Var3, si2Var, listC17, x02Var3);
    }
}
