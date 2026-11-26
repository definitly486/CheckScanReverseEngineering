package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g22 implements qv5 {
    public final tq3 a;

    public g22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final x12 a(ys4 ys4Var, n22 n22Var, JSONObject jSONObject) {
        zw2 zw2Var = n22Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, n22Var.b, jSONObject, "alignment_horizontal", h22.h, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, n22Var.c, jSONObject, "alignment_vertical", h22.i, h11.d);
        zw2 zw2Var2 = n22Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = h22.k;
        as2 as2Var = h22.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = n22Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = n22Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = n22Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = n22Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, h22.l);
        zw2 zw2Var7 = n22Var.i;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var8 = n22Var.j;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var8, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var9 = n22Var.k;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var9, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var10 = n22Var.l;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var10, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var11 = n22Var.m;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var11, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = h22.b;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, n22Var.n, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var12 = n22Var.o;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var = h22.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var12, jSONObject, "is_enabled", o36Var, nl3Var3, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var13 = n22Var.p;
        tq3 tq3Var10 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var13, jSONObject, "layout_provider", tq3Var10.L4, tq3Var10.J4);
        zw2 zw2Var14 = n22Var.q;
        tq3 tq3Var11 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var14, jSONObject, "margins", tq3Var11.Z2, tq3Var11.X2);
        zw2 zw2Var15 = n22Var.r;
        xr2 xr2Var2 = h22.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var15, jSONObject, "max_value", s36Var, nl3Var2, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var16 = n22Var.s;
        xr2 xr2Var3 = h22.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var16, jSONObject, "min_value", s36Var, nl3Var2, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var17 = n22Var.t;
        tq3 tq3Var12 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var17, jSONObject, "paddings", tq3Var12.Z2, tq3Var12.X2);
        zw2 zw2Var18 = n22Var.u;
        tq3 tq3Var13 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var18, jSONObject, "ranges", tq3Var13.h7, tq3Var13.f7);
        as2 as2VarB4 = qq3.b(ys4Var, n22Var.v, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, n22Var.w, jSONObject, "row_span", s36Var, nl3Var2, h22.m);
        zw2 zw2Var19 = n22Var.x;
        tq3 tq3Var14 = this.a;
        mr0 mr0Var2 = (mr0) qq3.b(ys4Var, zw2Var19, jSONObject, "secondary_value_accessibility", tq3Var14.J, tq3Var14.H);
        zw2 zw2Var20 = n22Var.y;
        tq3 tq3Var15 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var20, jSONObject, "selected_actions", tq3Var15.m1, tq3Var15.k1);
        zw2 zw2Var21 = n22Var.z;
        tq3 tq3Var16 = this.a;
        tc1 tc1Var = (tc1) qq3.b(ys4Var, zw2Var21, jSONObject, "thumb_secondary_style", tq3Var16.W2, tq3Var16.U2);
        zw2 zw2Var22 = n22Var.A;
        tq3 tq3Var17 = this.a;
        w12 w12Var = (w12) qq3.b(ys4Var, zw2Var22, jSONObject, "thumb_secondary_text_style", tq3Var17.e7, tq3Var17.c7);
        String str2 = (String) qq3.a(ys4Var, n22Var.B, jSONObject, "thumb_secondary_value_variable");
        zw2 zw2Var23 = n22Var.C;
        tq3 tq3Var18 = this.a;
        tc1 tc1Var2 = (tc1) qq3.a(ys4Var, zw2Var23, jSONObject, "thumb_style", tq3Var18.W2, tq3Var18.U2);
        zw2 zw2Var24 = n22Var.D;
        tq3 tq3Var19 = this.a;
        w12 w12Var2 = (w12) qq3.b(ys4Var, zw2Var24, jSONObject, "thumb_text_style", tq3Var19.e7, tq3Var19.c7);
        String str3 = (String) qq3.a(ys4Var, n22Var.E, jSONObject, "thumb_value_variable");
        zw2 zw2Var25 = n22Var.F;
        tq3 tq3Var20 = this.a;
        tc1 tc1Var3 = (tc1) qq3.b(ys4Var, zw2Var25, jSONObject, "tick_mark_active_style", tq3Var20.W2, tq3Var20.U2);
        zw2 zw2Var26 = n22Var.G;
        tq3 tq3Var21 = this.a;
        tc1 tc1Var4 = (tc1) qq3.b(ys4Var, zw2Var26, jSONObject, "tick_mark_inactive_style", tq3Var21.W2, tq3Var21.U2);
        zw2 zw2Var27 = n22Var.H;
        tq3 tq3Var22 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var27, jSONObject, "tooltips", tq3Var22.Q8, tq3Var22.O8);
        zw2 zw2Var28 = n22Var.I;
        tq3 tq3Var23 = this.a;
        tc1 tc1Var5 = (tc1) qq3.a(ys4Var, zw2Var28, jSONObject, "track_active_style", tq3Var23.W2, tq3Var23.U2);
        zw2 zw2Var29 = n22Var.J;
        tq3 tq3Var24 = this.a;
        tc1 tc1Var6 = (tc1) qq3.a(ys4Var, zw2Var29, jSONObject, "track_inactive_style", tq3Var24.W2, tq3Var24.U2);
        zw2 zw2Var30 = n22Var.K;
        tq3 tq3Var25 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var30, jSONObject, "transform", tq3Var25.T8, tq3Var25.R8);
        zw2 zw2Var31 = n22Var.L;
        tq3 tq3Var26 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_change", tq3Var26.W1, tq3Var26.U1);
        zw2 zw2Var32 = n22Var.M;
        tq3 tq3Var27 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var32, jSONObject, "transition_in", tq3Var27.B1, tq3Var27.z1);
        zw2 zw2Var33 = n22Var.N;
        tq3 tq3Var28 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var33, jSONObject, "transition_out", tq3Var28.B1, tq3Var28.z1);
        List listA = qq3.a(ys4Var, n22Var.O, jSONObject, pd2.d, h22.n);
        zw2 zw2Var34 = n22Var.P;
        tq3 tq3Var29 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var34, jSONObject, "variable_triggers", tq3Var29.W8, tq3Var29.U8);
        zw2 zw2Var35 = n22Var.Q;
        tq3 tq3Var30 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var35, jSONObject, "variables", tq3Var30.c9, tq3Var30.a9);
        zw2 zw2Var36 = n22Var.R;
        m36 m36Var = h22.j;
        nl3 nl3Var4 = ri2.d;
        as2 as2Var5 = h22.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var36, jSONObject, "visibility", m36Var, nl3Var4, as2Var5);
        if (as2VarA5 != null) {
            as2Var5 = as2VarA5;
        }
        zw2 zw2Var37 = n22Var.S;
        tq3 tq3Var31 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var37, jSONObject, "visibility_action", tq3Var31.o9, tq3Var31.m9);
        zw2 zw2Var38 = n22Var.T;
        tq3 tq3Var32 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var38, jSONObject, "visibility_actions", tq3Var32.o9, tq3Var32.m9);
        zw2 zw2Var39 = n22Var.U;
        tq3 tq3Var33 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var39, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var33.V6, tq3Var33.T6);
        if (x02Var3 == null) {
            x02Var3 = h22.g;
        }
        return new x12(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, listC3, listC4, hf1Var, listC5, x02Var2, str, as2Var2, to1Var, yc1Var, as2Var3, as2Var4, yc1Var2, listC6, as2VarB4, as2VarB5, mr0Var2, listC7, tc1Var, w12Var, str2, tc1Var2, w12Var2, str3, tc1Var3, tc1Var4, listC8, tc1Var5, tc1Var6, bd2Var, j61Var, s21Var, s21Var2, listA, listC9, listC10, as2Var5, si2Var, listC11, x02Var3);
    }
}
