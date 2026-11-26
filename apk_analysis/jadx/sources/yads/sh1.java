package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sh1 implements qv5 {
    public final tq3 a;

    public sh1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final oh1 a(ys4 ys4Var, vh1 vh1Var, JSONObject jSONObject) {
        zw2 zw2Var = vh1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = vh1Var.b;
        tq3 tq3Var2 = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "action", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = vh1Var.c;
        tq3 tq3Var3 = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var3, jSONObject, "action_animation", tq3Var3.s1, tq3Var3.q1);
        if (k11Var == null) {
            k11Var = th1.a;
        }
        k11 k11Var2 = k11Var;
        zw2 zw2Var4 = vh1Var.d;
        tq3 tq3Var4 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "actions", tq3Var4.m1, tq3Var4.k1);
        zw2 zw2Var5 = vh1Var.e;
        m36 m36Var = th1.i;
        nl3 nl3Var = f11.d;
        as2 as2VarB = qq3.b(ys4Var, zw2Var5, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        zw2 zw2Var6 = vh1Var.f;
        m36 m36Var2 = th1.j;
        nl3 nl3Var2 = h11.d;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var6, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        zw2 zw2Var7 = vh1Var.g;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = th1.n;
        as2 as2Var = th1.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var7, jSONObject, "alpha", r36Var, nl3Var3, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var8 = vh1Var.h;
        tq3 tq3Var5 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var8, jSONObject, "animators", tq3Var5.v1, tq3Var5.t1);
        zw2 zw2Var9 = vh1Var.i;
        tq3 tq3Var6 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var9, jSONObject, "background", tq3Var6.H1, tq3Var6.F1);
        zw2 zw2Var10 = vh1Var.j;
        tq3 tq3Var7 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var10, jSONObject, "border", tq3Var7.N1, tq3Var7.L1);
        zw2 zw2Var11 = vh1Var.k;
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var = th1.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var11, jSONObject, "capture_focus_on_action", o36Var, nl3Var4, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var12 = vh1Var.l;
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var12, jSONObject, "column_count", s36Var, nl3Var5, th1.o);
        as2 as2VarB3 = qq3.b(ys4Var, vh1Var.m, jSONObject, "column_span", s36Var, nl3Var5, th1.p);
        zw2 zw2Var13 = vh1Var.n;
        m36 m36Var3 = th1.k;
        xr2 xr2Var2 = th1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var13, jSONObject, "content_alignment_horizontal", m36Var3, nl3Var, xr2Var2);
        as2 as2Var3 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        zw2 zw2Var14 = vh1Var.o;
        m36 m36Var4 = th1.l;
        xr2 xr2Var3 = th1.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var14, jSONObject, "content_alignment_vertical", m36Var4, nl3Var2, xr2Var3);
        as2 as2Var4 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        zw2 zw2Var15 = vh1Var.p;
        tq3 tq3Var8 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var15, jSONObject, "disappear_actions", tq3Var8.Q2, tq3Var8.O2);
        zw2 zw2Var16 = vh1Var.q;
        tq3 tq3Var9 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var16, jSONObject, "doubletap_actions", tq3Var9.m1, tq3Var9.k1);
        zw2 zw2Var17 = vh1Var.r;
        tq3 tq3Var10 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var17, jSONObject, "extensions", tq3Var10.c3, tq3Var10.a3);
        zw2 zw2Var18 = vh1Var.s;
        tq3 tq3Var11 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var18, jSONObject, "focus", tq3Var11.A3, tq3Var11.y3);
        zw2 zw2Var19 = vh1Var.t;
        tq3 tq3Var12 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var19, jSONObject, "functions", tq3Var12.J3, tq3Var12.H3);
        zw2 zw2Var20 = vh1Var.u;
        tq3 tq3Var13 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var20, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var13.V6, tq3Var13.T6);
        if (x02Var == null) {
            x02Var = th1.f;
        }
        x02 x02Var2 = x02Var;
        zw2 zw2Var21 = vh1Var.v;
        tq3 tq3Var14 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var21, jSONObject, "hover_end_actions", tq3Var14.m1, tq3Var14.k1);
        zw2 zw2Var22 = vh1Var.w;
        tq3 tq3Var15 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var22, jSONObject, "hover_start_actions", tq3Var15.m1, tq3Var15.k1);
        String str = (String) qq3.a(ys4Var, vh1Var.x, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var23 = vh1Var.y;
        tq3 tq3Var16 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var23, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var16.u9, tq3Var16.s9);
        zw2 zw2Var24 = vh1Var.z;
        tq3 tq3Var17 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var24, jSONObject, "layout_provider", tq3Var17.L4, tq3Var17.J4);
        zw2 zw2Var25 = vh1Var.A;
        tq3 tq3Var18 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var25, jSONObject, "longtap_actions", tq3Var18.m1, tq3Var18.k1);
        zw2 zw2Var26 = vh1Var.B;
        tq3 tq3Var19 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var26, jSONObject, "margins", tq3Var19.Z2, tq3Var19.X2);
        zw2 zw2Var27 = vh1Var.C;
        tq3 tq3Var20 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var27, jSONObject, "paddings", tq3Var20.Z2, tq3Var20.X2);
        zw2 zw2Var28 = vh1Var.D;
        tq3 tq3Var21 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var28, jSONObject, "press_end_actions", tq3Var21.m1, tq3Var21.k1);
        zw2 zw2Var29 = vh1Var.E;
        tq3 tq3Var22 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var29, jSONObject, "press_start_actions", tq3Var22.m1, tq3Var22.k1);
        as2 as2VarB4 = qq3.b(ys4Var, vh1Var.F, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, vh1Var.G, jSONObject, "row_span", s36Var, nl3Var5, th1.q);
        zw2 zw2Var30 = vh1Var.H;
        tq3 tq3Var23 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var30, jSONObject, "selected_actions", tq3Var23.m1, tq3Var23.k1);
        zw2 zw2Var31 = vh1Var.I;
        tq3 tq3Var24 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var31, jSONObject, "tooltips", tq3Var24.Q8, tq3Var24.O8);
        zw2 zw2Var32 = vh1Var.J;
        tq3 tq3Var25 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var32, jSONObject, "transform", tq3Var25.T8, tq3Var25.R8);
        zw2 zw2Var33 = vh1Var.K;
        tq3 tq3Var26 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var33, jSONObject, "transition_change", tq3Var26.W1, tq3Var26.U1);
        zw2 zw2Var34 = vh1Var.L;
        tq3 tq3Var27 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var34, jSONObject, "transition_in", tq3Var27.B1, tq3Var27.z1);
        zw2 zw2Var35 = vh1Var.M;
        tq3 tq3Var28 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var35, jSONObject, "transition_out", tq3Var28.B1, tq3Var28.z1);
        List listA = qq3.a(ys4Var, vh1Var.N, jSONObject, pd2.d, th1.r);
        zw2 zw2Var36 = vh1Var.O;
        tq3 tq3Var29 = this.a;
        List listC16 = qq3.c(ys4Var, zw2Var36, jSONObject, "variable_triggers", tq3Var29.W8, tq3Var29.U8);
        zw2 zw2Var37 = vh1Var.P;
        tq3 tq3Var30 = this.a;
        List listC17 = qq3.c(ys4Var, zw2Var37, jSONObject, "variables", tq3Var30.c9, tq3Var30.a9);
        zw2 zw2Var38 = vh1Var.Q;
        m36 m36Var5 = th1.m;
        nl3 nl3Var6 = ri2.d;
        as2 as2Var5 = th1.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var38, jSONObject, "visibility", m36Var5, nl3Var6, as2Var5);
        if (as2VarA6 != null) {
            as2Var5 = as2VarA6;
        }
        zw2 zw2Var39 = vh1Var.R;
        tq3 tq3Var31 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var39, jSONObject, "visibility_action", tq3Var31.o9, tq3Var31.m9);
        zw2 zw2Var40 = vh1Var.S;
        tq3 tq3Var32 = this.a;
        List listC18 = qq3.c(ys4Var, zw2Var40, jSONObject, "visibility_actions", tq3Var32.o9, tq3Var32.m9);
        zw2 zw2Var41 = vh1Var.T;
        tq3 tq3Var33 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var41, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var33.V6, tq3Var33.T6);
        if (x02Var3 == null) {
            x02Var3 = th1.h;
        }
        return new oh1(mr0Var, xr0Var, k11Var2, listC, as2VarB, as2VarB2, as2Var, listC2, listC3, f51Var, as2Var2, as2VarA3, as2VarB3, as2Var3, as2Var4, listC4, listC5, listC6, hf1Var, listC7, x02Var2, listC8, listC9, str, listC10, to1Var, listC11, yc1Var, yc1Var2, listC12, listC13, as2VarB4, as2VarB5, listC14, listC15, bd2Var, j61Var, s21Var, s21Var2, listA, listC16, listC17, as2Var5, si2Var, listC18, x02Var3);
    }
}
