package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class e32 implements ln0 {
    public final tq3 a;

    public e32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final z22 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        xr0 xr0Var = (xr0) wq3.c(ys4Var, jSONObject, "action", this.a.k1);
        k11 k11Var = (k11) wq3.c(ys4Var, jSONObject, "action_animation", this.a.q1);
        if (k11Var == null) {
            k11Var = h32.a;
        }
        k11 k11Var2 = k11Var;
        List listD = wq3.d(ys4Var, jSONObject, "actions", this.a.k1);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", h32.i, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", h32.j, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = h32.m;
        xr2 xr2Var = h32.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD2 = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD3 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        xr2 xr2Var2 = h32.c;
        l66 l66Var2 = uq3.a;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "capture_focus_on_action", o36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        xr2 xr2Var3 = h32.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "clip_to_bounds", o36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA5 == null ? xr2Var3 : as2VarA5;
        s36 s36Var = w36.b;
        nl3 nl3Var3 = bt4.e;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var3, h32.n, (as2) null);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "default_state_id", u36Var);
        List listD4 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        String str = (String) wq3.a(ys4Var, jSONObject, "div_id");
        List listD5 = wq3.d(ys4Var, jSONObject, "doubletap_actions", this.a.k1);
        List listD6 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD7 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = h32.e;
        }
        x02 x02Var2 = x02Var;
        List listD8 = wq3.d(ys4Var, jSONObject, "hover_end_actions", this.a.k1);
        List listD9 = wq3.d(ys4Var, jSONObject, "hover_start_actions", this.a.k1);
        String str2 = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        List listD10 = wq3.d(ys4Var, jSONObject, "longtap_actions", this.a.k1);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        List listD11 = wq3.d(ys4Var, jSONObject, "press_end_actions", this.a.k1);
        List listD12 = wq3.d(ys4Var, jSONObject, "press_start_actions", this.a.k1);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var3, h32.o, (as2) null);
        List listD13 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        String str3 = (String) wq3.a(ys4Var, jSONObject, "state_id_variable");
        List listA = wq3.a(ys4Var, jSONObject, "states", this.a.o7, h32.p);
        List listD14 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        m36 m36Var = h32.k;
        nl3 nl3Var4 = nd2.d;
        xr2 xr2Var4 = h32.f;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "transition_animation_selector", m36Var, nl3Var4, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA8 == null ? xr2Var4 : as2VarA8;
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA2 = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, h32.q, l66Var2);
        List listD15 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD16 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var2 = h32.l;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var5 = h32.g;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "visibility", m36Var2, nl3Var5, l66Var2, as2Var5);
        if (as2VarA9 != null) {
            as2Var5 = as2VarA9;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD17 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = h32.h;
        }
        return new z22(mr0Var, xr0Var, k11Var2, listD, as2VarA, as2VarA2, as2Var, listD2, listD3, f51Var, as2Var2, as2Var3, as2VarA6, as2VarB, listD4, str, listD5, listD6, hf1Var, listD7, x02Var2, listD8, listD9, str2, to1Var, listD10, yc1Var, yc1Var2, listD11, listD12, as2VarB2, as2VarA7, listD13, str3, listA, listD14, bd2Var, as2Var4, j61Var, s21Var, s21Var2, listA2, listD15, listD16, as2Var5, si2Var, listD17, x02Var3);
    }
}
