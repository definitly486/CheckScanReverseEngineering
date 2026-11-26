package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pj1 implements qv5 {
    public final tq3 a;

    public pj1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final bj1 a(ys4 ys4Var, rj1 rj1Var, JSONObject jSONObject) {
        zw2 zw2Var = rj1Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        zw2 zw2Var2 = rj1Var.b;
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        xr2 xr2Var = qj1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "active_item_color", p36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = rj1Var.c;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var = qj1.p;
        xr2 xr2Var2 = qj1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "active_item_size", r36Var, nl3Var2, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var4 = rj1Var.d;
        tq3 tq3Var2 = this.a;
        gy1 gy1Var = (gy1) qq3.b(ys4Var, zw2Var4, jSONObject, "active_shape", tq3Var2.r6, tq3Var2.p6);
        as2 as2VarB = qq3.b(ys4Var, rj1Var.e, jSONObject, "alignment_horizontal", qj1.l, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, rj1Var.f, jSONObject, "alignment_vertical", qj1.m, h11.d);
        zw2 zw2Var5 = rj1Var.g;
        l66 l66Var2 = qj1.q;
        xr2 xr2Var3 = qj1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var5, jSONObject, "alpha", r36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        zw2 zw2Var6 = rj1Var.h;
        m36 m36Var = qj1.n;
        nl3 nl3Var3 = aj1.d;
        xr2 xr2Var4 = qj1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION, m36Var, nl3Var3, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        zw2 zw2Var7 = rj1Var.i;
        tq3 tq3Var3 = this.a;
        List listC = qq3.c(ys4Var, zw2Var7, jSONObject, "animators", tq3Var3.v1, tq3Var3.t1);
        zw2 zw2Var8 = rj1Var.j;
        tq3 tq3Var4 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var8, jSONObject, "background", tq3Var4.H1, tq3Var4.F1);
        zw2 zw2Var9 = rj1Var.k;
        tq3 tq3Var5 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var9, jSONObject, "border", tq3Var5.N1, tq3Var5.L1);
        zw2 zw2Var10 = rj1Var.l;
        s36 s36Var = w36.b;
        nl3 nl3Var4 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var10, jSONObject, "column_span", s36Var, nl3Var4, qj1.r);
        zw2 zw2Var11 = rj1Var.m;
        tq3 tq3Var6 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var11, jSONObject, "disappear_actions", tq3Var6.Q2, tq3Var6.O2);
        zw2 zw2Var12 = rj1Var.n;
        tq3 tq3Var7 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var12, jSONObject, "extensions", tq3Var7.c3, tq3Var7.a3);
        zw2 zw2Var13 = rj1Var.o;
        tq3 tq3Var8 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var13, jSONObject, "focus", tq3Var8.A3, tq3Var8.y3);
        zw2 zw2Var14 = rj1Var.p;
        tq3 tq3Var9 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var14, jSONObject, "functions", tq3Var9.J3, tq3Var9.H3);
        zw2 zw2Var15 = rj1Var.q;
        tq3 tq3Var10 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var15, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var10.V6, tq3Var10.T6);
        if (x02Var == null) {
            x02Var = qj1.e;
        }
        x02 x02Var2 = x02Var;
        String str = (String) qq3.a(ys4Var, rj1Var.r, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var16 = rj1Var.s;
        xr2 xr2Var5 = qj1.f;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var16, jSONObject, "inactive_item_color", p36Var, nl3Var, xr2Var5);
        as2 as2Var5 = as2VarA5 == null ? xr2Var5 : as2VarA5;
        zw2 zw2Var17 = rj1Var.t;
        tq3 tq3Var11 = this.a;
        gy1 gy1Var2 = (gy1) qq3.b(ys4Var, zw2Var17, jSONObject, "inactive_minimum_shape", tq3Var11.r6, tq3Var11.p6);
        zw2 zw2Var18 = rj1Var.u;
        tq3 tq3Var12 = this.a;
        gy1 gy1Var3 = (gy1) qq3.b(ys4Var, zw2Var18, jSONObject, "inactive_shape", tq3Var12.r6, tq3Var12.p6);
        zw2 zw2Var19 = rj1Var.v;
        tq3 tq3Var13 = this.a;
        gj1 gj1Var = (gj1) qq3.b(ys4Var, zw2Var19, jSONObject, "items_placement", tq3Var13.b4, tq3Var13.Z3);
        zw2 zw2Var20 = rj1Var.w;
        tq3 tq3Var14 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var20, jSONObject, "layout_provider", tq3Var14.L4, tq3Var14.J4);
        zw2 zw2Var21 = rj1Var.x;
        tq3 tq3Var15 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var21, jSONObject, "margins", tq3Var15.Z2, tq3Var15.X2);
        zw2 zw2Var22 = rj1Var.y;
        l66 l66Var3 = qj1.s;
        as2 as2Var6 = qj1.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var22, jSONObject, "minimum_item_size", r36Var, nl3Var2, l66Var3, as2Var6);
        if (as2VarA6 != null) {
            as2Var6 = as2VarA6;
        }
        zw2 zw2Var23 = rj1Var.z;
        tq3 tq3Var16 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var23, jSONObject, "paddings", tq3Var16.Z2, tq3Var16.X2);
        String str2 = (String) qq3.a(ys4Var, rj1Var.A, jSONObject, "pager_id");
        as2 as2VarB4 = qq3.b(ys4Var, rj1Var.B, jSONObject, "reuse_id", w36.c);
        as2 as2VarB5 = qq3.b(ys4Var, rj1Var.C, jSONObject, "row_span", s36Var, nl3Var4, qj1.t);
        zw2 zw2Var24 = rj1Var.D;
        tq3 tq3Var17 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var24, jSONObject, "selected_actions", tq3Var17.m1, tq3Var17.k1);
        zw2 zw2Var25 = rj1Var.E;
        tq3 tq3Var18 = this.a;
        f02 f02Var = (f02) qq3.b(ys4Var, zw2Var25, jSONObject, "shape", tq3Var18.P6, tq3Var18.N6);
        if (f02Var == null) {
            f02Var = qj1.h;
        }
        f02 f02Var2 = f02Var;
        zw2 zw2Var26 = rj1Var.F;
        tq3 tq3Var19 = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var26, jSONObject, "space_between_centers", tq3Var19.x3, tq3Var19.v3);
        if (af1Var == null) {
            af1Var = qj1.i;
        }
        af1 af1Var2 = af1Var;
        zw2 zw2Var27 = rj1Var.G;
        tq3 tq3Var20 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var27, jSONObject, "tooltips", tq3Var20.Q8, tq3Var20.O8);
        zw2 zw2Var28 = rj1Var.H;
        tq3 tq3Var21 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var28, jSONObject, "transform", tq3Var21.T8, tq3Var21.R8);
        zw2 zw2Var29 = rj1Var.I;
        tq3 tq3Var22 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var29, jSONObject, "transition_change", tq3Var22.W1, tq3Var22.U1);
        zw2 zw2Var30 = rj1Var.J;
        tq3 tq3Var23 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var30, jSONObject, "transition_in", tq3Var23.B1, tq3Var23.z1);
        zw2 zw2Var31 = rj1Var.K;
        tq3 tq3Var24 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_out", tq3Var24.B1, tq3Var24.z1);
        List listA = qq3.a(ys4Var, rj1Var.L, jSONObject, pd2.d, qj1.u);
        zw2 zw2Var32 = rj1Var.M;
        tq3 tq3Var25 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var32, jSONObject, "variable_triggers", tq3Var25.W8, tq3Var25.U8);
        zw2 zw2Var33 = rj1Var.N;
        tq3 tq3Var26 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var33, jSONObject, "variables", tq3Var26.c9, tq3Var26.a9);
        zw2 zw2Var34 = rj1Var.O;
        m36 m36Var2 = qj1.o;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var7 = qj1.j;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var34, jSONObject, "visibility", m36Var2, nl3Var5, as2Var7);
        if (as2VarA7 != null) {
            as2Var7 = as2VarA7;
        }
        zw2 zw2Var35 = rj1Var.P;
        tq3 tq3Var27 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var35, jSONObject, "visibility_action", tq3Var27.o9, tq3Var27.m9);
        zw2 zw2Var36 = rj1Var.Q;
        tq3 tq3Var28 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var36, jSONObject, "visibility_actions", tq3Var28.o9, tq3Var28.m9);
        zw2 zw2Var37 = rj1Var.R;
        tq3 tq3Var29 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var37, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var29.V6, tq3Var29.T6);
        if (x02Var3 == null) {
            x02Var3 = qj1.k;
        }
        return new bj1(mr0Var, as2Var, as2Var2, gy1Var, as2VarB, as2VarB2, as2Var3, as2Var4, listC, listC2, f51Var, as2VarB3, listC3, listC4, hf1Var, listC5, x02Var2, str, as2Var5, gy1Var2, gy1Var3, gj1Var, to1Var, yc1Var, as2Var6, yc1Var2, str2, as2VarB4, as2VarB5, listC6, f02Var2, af1Var2, listC7, bd2Var, j61Var, s21Var, s21Var2, listA, listC8, listC9, as2Var7, si2Var, listC10, x02Var3);
    }
}
