package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ra1 implements qv5 {
    public final tq3 a;

    public ra1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ka1 a(ys4 ys4Var, za1 za1Var, JSONObject jSONObject) {
        zw2 zw2Var = za1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, za1Var.b, jSONObject, "alignment_horizontal", sa1.e, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, za1Var.c, jSONObject, "alignment_vertical", sa1.f, h11.d);
        zw2 zw2Var2 = za1Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = sa1.h;
        as2 as2Var = sa1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = za1Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = za1Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = za1Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = za1Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, sa1.i);
        JSONObject jSONObject2 = (JSONObject) qq3.a(ys4Var, za1Var.i, jSONObject, "custom_props");
        String str = (String) qq3.a(za1Var.j, jSONObject, "custom_type");
        zw2 zw2Var7 = za1Var.k;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var8 = za1Var.l;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var8, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var9 = za1Var.m;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var9, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var10 = za1Var.n;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var10, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var11 = za1Var.o;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var11, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = sa1.b;
        }
        x02 x02Var2 = x02Var;
        String str2 = (String) qq3.a(ys4Var, za1Var.p, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var12 = za1Var.q;
        tq3 tq3Var10 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var12, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var10.u9, tq3Var10.s9);
        zw2 zw2Var13 = za1Var.r;
        tq3 tq3Var11 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var13, jSONObject, "layout_provider", tq3Var11.L4, tq3Var11.J4);
        zw2 zw2Var14 = za1Var.s;
        tq3 tq3Var12 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var14, jSONObject, "margins", tq3Var12.Z2, tq3Var12.X2);
        zw2 zw2Var15 = za1Var.t;
        tq3 tq3Var13 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var15, jSONObject, "paddings", tq3Var13.Z2, tq3Var13.X2);
        as2 as2VarB4 = qq3.b(ys4Var, za1Var.u, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, za1Var.v, jSONObject, "row_span", s36Var, nl3Var2, sa1.j);
        zw2 zw2Var16 = za1Var.w;
        tq3 tq3Var14 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var16, jSONObject, "selected_actions", tq3Var14.m1, tq3Var14.k1);
        zw2 zw2Var17 = za1Var.x;
        tq3 tq3Var15 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var17, jSONObject, "tooltips", tq3Var15.Q8, tq3Var15.O8);
        zw2 zw2Var18 = za1Var.y;
        tq3 tq3Var16 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var18, jSONObject, "transform", tq3Var16.T8, tq3Var16.R8);
        zw2 zw2Var19 = za1Var.z;
        tq3 tq3Var17 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var19, jSONObject, "transition_change", tq3Var17.W1, tq3Var17.U1);
        zw2 zw2Var20 = za1Var.A;
        tq3 tq3Var18 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var20, jSONObject, "transition_in", tq3Var18.B1, tq3Var18.z1);
        zw2 zw2Var21 = za1Var.B;
        tq3 tq3Var19 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var21, jSONObject, "transition_out", tq3Var19.B1, tq3Var19.z1);
        List listA = qq3.a(ys4Var, za1Var.C, jSONObject, pd2.d, sa1.k);
        zw2 zw2Var22 = za1Var.D;
        tq3 tq3Var20 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var22, jSONObject, "variable_triggers", tq3Var20.W8, tq3Var20.U8);
        zw2 zw2Var23 = za1Var.E;
        tq3 tq3Var21 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var23, jSONObject, "variables", tq3Var21.c9, tq3Var21.a9);
        zw2 zw2Var24 = za1Var.F;
        m36 m36Var = sa1.g;
        nl3 nl3Var3 = ri2.d;
        as2 as2Var2 = sa1.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var24, jSONObject, "visibility", m36Var, nl3Var3, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        zw2 zw2Var25 = za1Var.G;
        tq3 tq3Var22 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var25, jSONObject, "visibility_action", tq3Var22.o9, tq3Var22.m9);
        zw2 zw2Var26 = za1Var.H;
        tq3 tq3Var23 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var26, jSONObject, "visibility_actions", tq3Var23.o9, tq3Var23.m9);
        zw2 zw2Var27 = za1Var.I;
        tq3 tq3Var24 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var27, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var24.V6, tq3Var24.T6);
        if (x02Var3 == null) {
            x02Var3 = sa1.d;
        }
        return new ka1(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, jSONObject2, str, listC3, listC4, hf1Var, listC5, x02Var2, str2, listC6, to1Var, yc1Var, yc1Var2, as2VarB4, as2VarB5, listC7, listC8, bd2Var, j61Var, s21Var, s21Var2, listA, listC9, listC10, as2Var2, si2Var, listC11, x02Var3);
    }
}
