package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ug2 implements qv5 {
    public final tq3 a;

    public ug2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ng2 a(ys4 ys4Var, lh2 lh2Var, JSONObject jSONObject) {
        zw2 zw2Var = lh2Var.a;
        tq3 tq3Var = this.a;
        mr0 mr0Var = (mr0) qq3.b(ys4Var, zw2Var, jSONObject, "accessibility", tq3Var.J, tq3Var.H);
        as2 as2VarB = qq3.b(ys4Var, lh2Var.b, jSONObject, "alignment_horizontal", vg2.j, f11.d);
        as2 as2VarB2 = qq3.b(ys4Var, lh2Var.c, jSONObject, "alignment_vertical", vg2.k, h11.d);
        zw2 zw2Var2 = lh2Var.d;
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = vg2.n;
        as2 as2Var = vg2.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = lh2Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "animators", tq3Var2.v1, tq3Var2.t1);
        zw2 zw2Var4 = lh2Var.f;
        tq3 tq3Var3 = this.a;
        b31 b31Var = (b31) qq3.b(ys4Var, zw2Var4, jSONObject, "aspect", tq3Var3.E1, tq3Var3.C1);
        zw2 zw2Var5 = lh2Var.g;
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var = vg2.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var5, jSONObject, "autostart", o36Var, nl3Var2, xr2Var);
        as2 as2Var2 = as2VarA2 == null ? xr2Var : as2VarA2;
        zw2 zw2Var6 = lh2Var.h;
        tq3 tq3Var4 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var6, jSONObject, "background", tq3Var4.H1, tq3Var4.F1);
        zw2 zw2Var7 = lh2Var.i;
        tq3 tq3Var5 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var7, jSONObject, "border", tq3Var5.N1, tq3Var5.L1);
        zw2 zw2Var8 = lh2Var.j;
        tq3 tq3Var6 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var8, jSONObject, "buffering_actions", tq3Var6.m1, tq3Var6.k1);
        zw2 zw2Var9 = lh2Var.k;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var9, jSONObject, "column_span", s36Var, nl3Var3, vg2.o);
        zw2 zw2Var10 = lh2Var.l;
        tq3 tq3Var7 = this.a;
        List listC4 = qq3.c(ys4Var, zw2Var10, jSONObject, "disappear_actions", tq3Var7.Q2, tq3Var7.O2);
        String str = (String) qq3.a(ys4Var, lh2Var.m, jSONObject, "elapsed_time_variable");
        zw2 zw2Var11 = lh2Var.n;
        tq3 tq3Var8 = this.a;
        List listC5 = qq3.c(ys4Var, zw2Var11, jSONObject, "end_actions", tq3Var8.m1, tq3Var8.k1);
        zw2 zw2Var12 = lh2Var.o;
        tq3 tq3Var9 = this.a;
        List listC6 = qq3.c(ys4Var, zw2Var12, jSONObject, "extensions", tq3Var9.c3, tq3Var9.a3);
        zw2 zw2Var13 = lh2Var.p;
        tq3 tq3Var10 = this.a;
        List listC7 = qq3.c(ys4Var, zw2Var13, jSONObject, "fatal_actions", tq3Var10.m1, tq3Var10.k1);
        zw2 zw2Var14 = lh2Var.q;
        tq3 tq3Var11 = this.a;
        hf1 hf1Var = (hf1) qq3.b(ys4Var, zw2Var14, jSONObject, "focus", tq3Var11.A3, tq3Var11.y3);
        zw2 zw2Var15 = lh2Var.r;
        tq3 tq3Var12 = this.a;
        List listC8 = qq3.c(ys4Var, zw2Var15, jSONObject, "functions", tq3Var12.J3, tq3Var12.H3);
        zw2 zw2Var16 = lh2Var.s;
        tq3 tq3Var13 = this.a;
        x02 x02Var = (x02) qq3.b(ys4Var, zw2Var16, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var13.V6, tq3Var13.T6);
        if (x02Var == null) {
            x02Var = vg2.c;
        }
        x02 x02Var2 = x02Var;
        String str2 = (String) qq3.a(ys4Var, lh2Var.t, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var17 = lh2Var.u;
        tq3 tq3Var14 = this.a;
        to1 to1Var = (to1) qq3.b(ys4Var, zw2Var17, jSONObject, "layout_provider", tq3Var14.L4, tq3Var14.J4);
        zw2 zw2Var18 = lh2Var.v;
        tq3 tq3Var15 = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var18, jSONObject, "margins", tq3Var15.Z2, tq3Var15.X2);
        zw2 zw2Var19 = lh2Var.w;
        xr2 xr2Var2 = vg2.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var19, jSONObject, "muted", o36Var, nl3Var2, xr2Var2);
        as2 as2Var3 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        zw2 zw2Var20 = lh2Var.x;
        tq3 tq3Var16 = this.a;
        yc1 yc1Var2 = (yc1) qq3.b(ys4Var, zw2Var20, jSONObject, "paddings", tq3Var16.Z2, tq3Var16.X2);
        zw2 zw2Var21 = lh2Var.y;
        tq3 tq3Var17 = this.a;
        List listC9 = qq3.c(ys4Var, zw2Var21, jSONObject, "pause_actions", tq3Var17.m1, tq3Var17.k1);
        JSONObject jSONObject2 = (JSONObject) qq3.a(ys4Var, lh2Var.z, jSONObject, "player_settings_payload");
        zw2 zw2Var22 = lh2Var.A;
        xr2 xr2Var3 = vg2.e;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var22, jSONObject, "preload_required", o36Var, nl3Var2, xr2Var3);
        as2 as2Var4 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        zw2 zw2Var23 = lh2Var.B;
        u36 u36Var = w36.c;
        as2 as2VarB4 = qq3.b(ys4Var, zw2Var23, jSONObject, "preview", u36Var);
        zw2 zw2Var24 = lh2Var.C;
        xr2 xr2Var4 = vg2.f;
        as2 as2Var5 = as2Var;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var24, jSONObject, "repeatable", o36Var, nl3Var2, xr2Var4);
        as2 as2Var6 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        zw2 zw2Var25 = lh2Var.D;
        tq3 tq3Var18 = this.a;
        List listC10 = qq3.c(ys4Var, zw2Var25, jSONObject, "resume_actions", tq3Var18.m1, tq3Var18.k1);
        as2 as2VarB5 = qq3.b(ys4Var, lh2Var.E, jSONObject, "reuse_id", u36Var);
        as2 as2VarB6 = qq3.b(ys4Var, lh2Var.F, jSONObject, "row_span", s36Var, nl3Var3, vg2.p);
        zw2 zw2Var26 = lh2Var.G;
        m36 m36Var = vg2.l;
        nl3 nl3Var4 = yg2.d;
        xr2 xr2Var5 = vg2.g;
        as2 as2VarA6 = qq3.a(ys4Var, zw2Var26, jSONObject, "scale", m36Var, nl3Var4, xr2Var5);
        as2 as2Var7 = as2VarA6 == null ? xr2Var5 : as2VarA6;
        zw2 zw2Var27 = lh2Var.H;
        tq3 tq3Var19 = this.a;
        List listC11 = qq3.c(ys4Var, zw2Var27, jSONObject, "selected_actions", tq3Var19.m1, tq3Var19.k1);
        zw2 zw2Var28 = lh2Var.I;
        tq3 tq3Var20 = this.a;
        List listC12 = qq3.c(ys4Var, zw2Var28, jSONObject, "tooltips", tq3Var20.Q8, tq3Var20.O8);
        zw2 zw2Var29 = lh2Var.J;
        tq3 tq3Var21 = this.a;
        bd2 bd2Var = (bd2) qq3.b(ys4Var, zw2Var29, jSONObject, "transform", tq3Var21.T8, tq3Var21.R8);
        zw2 zw2Var30 = lh2Var.K;
        tq3 tq3Var22 = this.a;
        j61 j61Var = (j61) qq3.b(ys4Var, zw2Var30, jSONObject, "transition_change", tq3Var22.W1, tq3Var22.U1);
        zw2 zw2Var31 = lh2Var.L;
        tq3 tq3Var23 = this.a;
        s21 s21Var = (s21) qq3.b(ys4Var, zw2Var31, jSONObject, "transition_in", tq3Var23.B1, tq3Var23.z1);
        zw2 zw2Var32 = lh2Var.M;
        tq3 tq3Var24 = this.a;
        s21 s21Var2 = (s21) qq3.b(ys4Var, zw2Var32, jSONObject, "transition_out", tq3Var24.B1, tq3Var24.z1);
        List listA = qq3.a(ys4Var, lh2Var.N, jSONObject, pd2.d, vg2.q);
        zw2 zw2Var33 = lh2Var.O;
        tq3 tq3Var25 = this.a;
        List listC13 = qq3.c(ys4Var, zw2Var33, jSONObject, "variable_triggers", tq3Var25.W8, tq3Var25.U8);
        zw2 zw2Var34 = lh2Var.P;
        tq3 tq3Var26 = this.a;
        List listC14 = qq3.c(ys4Var, zw2Var34, jSONObject, "variables", tq3Var26.c9, tq3Var26.a9);
        zw2 zw2Var35 = lh2Var.Q;
        tq3 tq3Var27 = this.a;
        List listA2 = qq3.a(ys4Var, zw2Var35, jSONObject, "video_sources", tq3Var27.f9, tq3Var27.d9, vg2.r);
        zw2 zw2Var36 = lh2Var.R;
        m36 m36Var2 = vg2.m;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var8 = vg2.h;
        as2 as2VarA7 = qq3.a(ys4Var, zw2Var36, jSONObject, "visibility", m36Var2, nl3Var5, as2Var8);
        if (as2VarA7 != null) {
            as2Var8 = as2VarA7;
        }
        zw2 zw2Var37 = lh2Var.S;
        tq3 tq3Var28 = this.a;
        si2 si2Var = (si2) qq3.b(ys4Var, zw2Var37, jSONObject, "visibility_action", tq3Var28.o9, tq3Var28.m9);
        zw2 zw2Var38 = lh2Var.T;
        tq3 tq3Var29 = this.a;
        List listC15 = qq3.c(ys4Var, zw2Var38, jSONObject, "visibility_actions", tq3Var29.o9, tq3Var29.m9);
        zw2 zw2Var39 = lh2Var.U;
        tq3 tq3Var30 = this.a;
        x02 x02Var3 = (x02) qq3.b(ys4Var, zw2Var39, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var30.V6, tq3Var30.T6);
        if (x02Var3 == null) {
            x02Var3 = vg2.i;
        }
        return new ng2(mr0Var, as2VarB, as2VarB2, as2Var5, listC, b31Var, as2Var2, listC2, f51Var, listC3, as2VarB3, listC4, str, listC5, listC6, listC7, hf1Var, listC8, x02Var2, str2, to1Var, yc1Var, as2Var3, yc1Var2, listC9, jSONObject2, as2Var4, as2VarB4, as2Var6, listC10, as2VarB5, as2VarB6, as2Var7, listC11, listC12, bd2Var, j61Var, s21Var, s21Var2, listA, listC13, listC14, listA2, as2Var8, si2Var, listC15, x02Var3);
    }
}
