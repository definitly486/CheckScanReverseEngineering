package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p52 implements qv5 {
    public final tq3 a;

    public p52(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final k52 a(ys4 ys4Var, r52 r52Var, JSONObject jSONObject) {
        zw2 zw2Var = r52Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, r52Var.b, jSONObject, "alignment_horizontal", q52.f, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, r52Var.c, jSONObject, "alignment_vertical", q52.g, h11.d);
        zw2 zw2Var2 = r52Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = q52.i;
        as2 as2Var = q52.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = r52Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = r52Var.f;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "background", tq3Var3.H1, tq3Var3.F1);
        zw2 zw2Var5 = r52Var.g;
        tq3 tq3Var4 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var5, jSONObject, "border", tq3Var4.N1, tq3Var4.L1);
        zw2 zw2Var6 = r52Var.h;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var6, jSONObject, "column_span", s36Var, nl3Var2, q52.j);
        zw2 zw2Var7 = r52Var.i;
        tq3 tq3Var5 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var7, jSONObject, "disappear_actions", tq3Var5.Q2, tq3Var5.O2);
        zw2 zw2Var8 = r52Var.j;
        tq3 tq3Var6 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var8, jSONObject, "extensions", tq3Var6.c3, tq3Var6.a3);
        zw2 zw2Var9 = r52Var.k;
        tq3 tq3Var7 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var9, jSONObject, "focus", tq3Var7.A3, tq3Var7.y3);
        zw2 zw2Var10 = r52Var.l;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var10, jSONObject, "functions", tq3Var8.J3, tq3Var8.H3);
        zw2 zw2Var11 = r52Var.m;
        tq3 tq3Var9 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var11, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var9.V6, tq3Var9.T6);
        if (x02Var == null) {
            x02Var = q52.b;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, r52Var.n, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var12 = r52Var.o;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var = q52.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var12, jSONObject, "is_enabled", o36Var, nl3Var3, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        String str2 = (String) qq3.a(r52Var.p, jSONObject, "is_on_variable");
        zw2 zw2Var13 = r52Var.q;
        tq3 tq3Var10 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var13, jSONObject, "layout_provider", tq3Var10.L4, tq3Var10.J4);
        zw2 zw2Var14 = r52Var.r;
        tq3 tq3Var11 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var14, jSONObject, "margins", tq3Var11.Z2, tq3Var11.X2);
        as2 as2VarB4 = qq3.b(ys4Var, r52Var.s, jSONObject, "on_color", w36.f, bt4.a);
        zw2 zw2Var15 = r52Var.t;
        tq3 tq3Var12 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var15, jSONObject, "paddings", tq3Var12.Z2, tq3Var12.X2);
        as2 as2VarB5 = qq3.b(ys4Var, r52Var.u, jSONObject, "reuse_id", w36.c);
        as2 as2VarB6 = qq3.b(ys4Var, r52Var.v, jSONObject, "row_span", s36Var, nl3Var2, q52.k);
        zw2 zw2Var16 = r52Var.w;
        tq3 tq3Var13 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var16, jSONObject, "selected_actions", tq3Var13.m1, tq3Var13.k1);
        zw2 zw2Var17 = r52Var.x;
        tq3 tq3Var14 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var17, jSONObject, "tooltips", tq3Var14.Q8, tq3Var14.O8);
        zw2 zw2Var18 = r52Var.y;
        tq3 tq3Var15 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var18, jSONObject, "transform", tq3Var15.T8, tq3Var15.R8);
        zw2 zw2Var19 = r52Var.z;
        tq3 tq3Var16 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var19, jSONObject, "transition_change", tq3Var16.W1, tq3Var16.U1);
        zw2 zw2Var20 = r52Var.A;
        tq3 tq3Var17 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var20, jSONObject, "transition_in", tq3Var17.B1, tq3Var17.z1);
        zw2 zw2Var21 = r52Var.B;
        tq3 tq3Var18 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var21, jSONObject, "transition_out", tq3Var18.B1, tq3Var18.z1);
        List listA = qq3.a(ys4Var, r52Var.C, jSONObject, pd2.d, q52.l);
        zw2 zw2Var22 = r52Var.D;
        tq3 tq3Var19 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var22, jSONObject, "variable_triggers", tq3Var19.W8, tq3Var19.U8);
        zw2 zw2Var23 = r52Var.E;
        tq3 tq3Var20 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var23, jSONObject, "variables", tq3Var20.c9, tq3Var20.a9);
        zw2 zw2Var24 = r52Var.F;
        m36 m36Var = q52.h;
        nl3 nl3Var4 = ri2.d;
        as2 as2Var3 = q52.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var24, jSONObject, "visibility", m36Var, nl3Var4, as2Var3);
        if (as2VarA3 != null) {
            as2Var3 = as2VarA3;
        }
        zw2 zw2Var25 = r52Var.G;
        tq3 tq3Var21 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var25, jSONObject, "visibility_action", tq3Var21.o9, tq3Var21.m9);
        zw2 zw2Var26 = r52Var.H;
        tq3 tq3Var22 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var26, jSONObject, "visibility_actions", tq3Var22.o9, tq3Var22.m9);
        zw2 zw2Var27 = r52Var.I;
        tq3 tq3Var23 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var27, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var23.V6, tq3Var23.T6);
        if (x02Var3 == null) {
            x02Var3 = q52.e;
        }
        return new k52(mr0Var, as2VarB, as2VarB2, as2Var, listC, listC2, f51Var, as2VarB3, listC3, listC4, hf1Var, listC5, x02Var2, str, as2Var2, str2, to1Var, yc1Var, as2VarB4, yc1Var2, as2VarB5, as2VarB6, listC6, listC7, bd2Var, j61Var, s21Var, s21Var2, listA, listC8, listC9, as2Var3, si2Var, listC10, x02Var3);
    }
}
