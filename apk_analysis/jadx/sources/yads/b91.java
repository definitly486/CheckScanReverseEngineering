package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b91 implements ln0 {
    public final tq3 a;

    public b91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final j81 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        xr0 xr0Var = (xr0) wq3.c(ys4Var, jSONObject, "action", this.a.k1);
        k11 k11Var = (k11) wq3.c(ys4Var, jSONObject, "action_animation", this.a.q1);
        if (k11Var == null) {
            k11Var = e91.a;
        }
        k11 k11Var2 = k11Var;
        List listD = wq3.d(ys4Var, jSONObject, "actions", this.a.k1);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", e91.n, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", e91.o, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = e91.u;
        xr2 xr2Var = e91.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD2 = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        b31 b31Var = (b31) wq3.c(ys4Var, jSONObject, "aspect", this.a.C1);
        List listD3 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = e91.c;
        l66 l66Var2 = uq3.a;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "capture_focus_on_action", o36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        xr2 xr2Var3 = e91.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "clip_to_bounds", o36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var3, e91.v, (as2) null);
        m36 m36Var = e91.p;
        nl3 nl3Var4 = m91.d;
        xr2 xr2Var4 = e91.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "content_alignment_horizontal", m36Var, nl3Var4, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        m36 m36Var2 = e91.q;
        nl3 nl3Var5 = o91.d;
        xr2 xr2Var5 = e91.f;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "content_alignment_vertical", m36Var2, nl3Var5, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA8 == null ? xr2Var5 : as2VarA8;
        List listD4 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD5 = wq3.d(ys4Var, jSONObject, "doubletap_actions", this.a.k1);
        List listD6 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD7 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = e91.g;
        }
        x02 x02Var2 = x02Var;
        List listD8 = wq3.d(ys4Var, jSONObject, "hover_end_actions", this.a.k1);
        List listD9 = wq3.d(ys4Var, jSONObject, "hover_start_actions", this.a.k1);
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        j71 j71Var = (j71) wq3.c(ys4Var, jSONObject, "item_builder", this.a.d2);
        l66 l66Var3 = e91.w;
        xr2 xr2Var6 = e91.h;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "item_spacing", s36Var, nl3Var3, l66Var3, xr2Var6);
        as2 as2Var6 = as2VarA9 == null ? xr2Var6 : as2VarA9;
        List listD10 = wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.s9);
        m36 m36Var3 = e91.r;
        nl3 nl3Var6 = f81.d;
        xr2 xr2Var7 = e91.i;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "layout_mode", m36Var3, nl3Var6, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA10 == null ? xr2Var7 : as2VarA10;
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        i81 i81Var = (i81) wq3.c(ys4Var, jSONObject, "line_separator", this.a.p2);
        l66 l66Var4 = e91.x;
        xr2 xr2Var8 = e91.j;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "line_spacing", s36Var, nl3Var3, l66Var4, xr2Var8);
        as2 as2Var8 = as2VarA11 == null ? xr2Var8 : as2VarA11;
        List listD11 = wq3.d(ys4Var, jSONObject, "longtap_actions", this.a.k1);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        m36 m36Var4 = e91.s;
        nl3 nl3Var7 = h81.d;
        xr2 xr2Var9 = e91.k;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var4, nl3Var7, l66Var2, xr2Var9);
        as2 as2Var9 = as2VarA12 == null ? xr2Var9 : as2VarA12;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        List listD12 = wq3.d(ys4Var, jSONObject, "press_end_actions", this.a.k1);
        List listD13 = wq3.d(ys4Var, jSONObject, "press_start_actions", this.a.k1);
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var3, e91.y, (as2) null);
        List listD14 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        i81 i81Var2 = (i81) wq3.c(ys4Var, jSONObject, "separator", this.a.p2);
        List listD15 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, e91.z, l66Var2);
        List listD16 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD17 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var5 = e91.t;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var10 = e91.l;
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "visibility", m36Var5, nl3Var8, l66Var2, as2Var10);
        if (as2VarA14 != null) {
            as2Var10 = as2VarA14;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD18 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = e91.m;
        }
        return new j81(mr0Var, xr0Var, k11Var2, listD, as2VarA, as2VarA2, as2Var, listD2, b31Var, listD3, f51Var, as2Var2, as2Var3, as2VarA6, as2Var4, as2Var5, listD4, listD5, listD6, hf1Var, listD7, x02Var2, listD8, listD9, str, j71Var, as2Var6, listD10, as2Var7, to1Var, i81Var, as2Var8, listD11, yc1Var, as2Var9, yc1Var2, listD12, listD13, as2VarB, as2VarA13, listD14, i81Var2, listD15, bd2Var, j61Var, s21Var, s21Var2, listA, listD16, listD17, as2Var10, si2Var, listD18, x02Var3);
    }
}
