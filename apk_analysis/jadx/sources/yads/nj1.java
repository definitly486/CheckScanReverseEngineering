package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nj1 implements ln0 {
    public final tq3 a;

    public nj1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bj1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        xr2 xr2Var = qj1.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "active_item_color", p36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        l66 l66Var2 = qj1.p;
        xr2 xr2Var2 = qj1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "active_item_size", r36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        gy1 gy1Var = (gy1) wq3.c(ys4Var, jSONObject, "active_shape", this.a.p6);
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alignment_horizontal", qj1.l, f11.d);
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "alignment_vertical", qj1.m, h11.d);
        l66 l66Var3 = qj1.q;
        xr2 xr2Var3 = qj1.c;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var2, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        m36 m36Var = qj1.n;
        nl3 nl3Var3 = aj1.d;
        xr2 xr2Var4 = qj1.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION, m36Var, nl3Var3, l66Var, xr2Var4);
        as2 as2Var4 = as2VarA6 == null ? xr2Var4 : as2VarA6;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var4 = bt4.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var4, qj1.r, (as2) null);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = qj1.e;
        }
        x02 x02Var2 = x02Var;
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        xr2 xr2Var5 = qj1.f;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "inactive_item_color", p36Var, nl3Var, l66Var, xr2Var5);
        as2 as2Var5 = as2VarA8 == null ? xr2Var5 : as2VarA8;
        gy1 gy1Var2 = (gy1) wq3.c(ys4Var, jSONObject, "inactive_minimum_shape", this.a.p6);
        gy1 gy1Var3 = (gy1) wq3.c(ys4Var, jSONObject, "inactive_shape", this.a.p6);
        gj1 gj1Var = (gj1) wq3.c(ys4Var, jSONObject, "items_placement", this.a.Z3);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        l66 l66Var4 = qj1.s;
        xr2 xr2Var6 = qj1.g;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "minimum_item_size", r36Var, nl3Var2, l66Var4, xr2Var6);
        as2 as2Var6 = as2VarA9 == null ? xr2Var6 : as2VarA9;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        String str2 = (String) wq3.a(ys4Var, jSONObject, "pager_id");
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var4, qj1.t, (as2) null);
        List listD6 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        f02 f02Var = (f02) wq3.c(ys4Var, jSONObject, "shape", this.a.N6);
        if (f02Var == null) {
            f02Var = qj1.h;
        }
        f02 f02Var2 = f02Var;
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "space_between_centers", this.a.v3);
        if (af1Var == null) {
            af1Var = qj1.i;
        }
        af1 af1Var2 = af1Var;
        List listD7 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, qj1.u, l66Var);
        List listD8 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD9 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var2 = qj1.o;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var7 = qj1.j;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "visibility", m36Var2, nl3Var5, l66Var, as2Var7);
        if (as2VarA11 != null) {
            as2Var7 = as2VarA11;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD10 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = qj1.k;
        }
        return new bj1(mr0Var, as2Var, as2Var2, gy1Var, as2VarA3, as2VarA4, as2Var3, as2Var4, listD, listD2, f51Var, as2VarA7, listD3, listD4, hf1Var, listD5, x02Var2, str, as2Var5, gy1Var2, gy1Var3, gj1Var, to1Var, yc1Var, as2Var6, yc1Var2, str2, as2VarB, as2VarA10, listD6, f02Var2, af1Var2, listD7, bd2Var, j61Var, s21Var, s21Var2, listA, listD8, listD9, as2Var7, si2Var, listD10, x02Var3);
    }
}
