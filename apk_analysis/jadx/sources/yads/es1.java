package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class es1 implements ln0 {
    public final tq3 a;

    public es1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ur1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", hs1.l, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", hs1.m, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = hs1.r;
        xr2 xr2Var = hs1.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, hs1.s, (as2) null);
        m36 m36Var = hs1.n;
        nl3 nl3Var3 = rr1.d;
        xr2 xr2Var2 = hs1.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "cross_axis_alignment", m36Var, nl3Var3, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        l66 l66Var3 = hs1.t;
        xr2 xr2Var3 = hs1.c;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "default_item", s36Var, nl3Var2, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = hs1.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var4 = hs1.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "infinite_scroll", o36Var, nl3Var4, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        j71 j71Var = (j71) wq3.c(ys4Var, jSONObject, "item_builder", this.a.d2);
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "item_spacing", this.a.v3);
        if (af1Var == null) {
            af1Var = hs1.f;
        }
        af1 af1Var2 = af1Var;
        List listD6 = wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.s9);
        ls1 ls1Var = (ls1) wq3.a(ys4Var, jSONObject, "layout_mode", this.a.t5);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        m36 m36Var2 = hs1.o;
        nl3 nl3Var5 = tr1.d;
        xr2 xr2Var5 = hs1.g;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var2, nl3Var5, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA8 == null ? xr2Var5 : as2VarA8;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        xq1 xq1Var = (xq1) wq3.c(ys4Var, jSONObject, "page_transformation", this.a.q5);
        xr2 xr2Var6 = hs1.h;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "restrict_parent_scroll", o36Var, nl3Var4, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA9 == null ? xr2Var6 : as2VarA9;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, hs1.u, (as2) null);
        m36 m36Var3 = hs1.p;
        xr2 xr2Var7 = hs1.i;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "scroll_axis_alignment", m36Var3, nl3Var3, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA11 == null ? xr2Var7 : as2VarA11;
        List listD7 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        List listD8 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, hs1.v, l66Var2);
        List listD9 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD10 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var4 = hs1.q;
        nl3 nl3Var6 = ri2.d;
        as2 as2Var8 = hs1.j;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "visibility", m36Var4, nl3Var6, l66Var2, as2Var8);
        if (as2VarA12 != null) {
            as2Var8 = as2VarA12;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD11 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = hs1.k;
        }
        return new ur1(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, as2Var2, as2Var3, listD3, listD4, hf1Var, listD5, x02Var2, str, as2Var4, j71Var, af1Var2, listD6, ls1Var, to1Var, yc1Var, as2Var5, yc1Var2, xq1Var, as2Var6, as2VarB, as2VarA10, as2Var7, listD7, listD8, bd2Var, j61Var, s21Var, s21Var2, listA, listD9, listD10, as2Var8, si2Var, listD11, x02Var3);
    }
}
