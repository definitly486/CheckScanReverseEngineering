package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ih1 implements ln0 {
    public final tq3 a;

    public ih1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final eh1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        xr0 xr0Var = (xr0) wq3.c(ys4Var, jSONObject, "action", this.a.k1);
        k11 k11Var = (k11) wq3.c(ys4Var, jSONObject, "action_animation", this.a.q1);
        if (k11Var == null) {
            k11Var = lh1.a;
        }
        k11 k11Var2 = k11Var;
        List listD = wq3.d(ys4Var, jSONObject, "actions", this.a.k1);
        m36 m36Var = lh1.l;
        nl3 nl3Var = f11.d;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        m36 m36Var2 = lh1.m;
        nl3 nl3Var2 = h11.d;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = lh1.r;
        xr2 xr2Var = lh1.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var3, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD2 = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        b31 b31Var = (b31) wq3.c(ys4Var, jSONObject, "aspect", this.a.C1);
        List listD3 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var2 = lh1.c;
        l66 l66Var2 = uq3.a;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "capture_focus_on_action", o36Var, nl3Var4, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var5, lh1.s, (as2) null);
        m36 m36Var3 = lh1.n;
        xr2 xr2Var3 = lh1.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "content_alignment_horizontal", m36Var3, nl3Var, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        m36 m36Var4 = lh1.o;
        xr2 xr2Var4 = lh1.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "content_alignment_vertical", m36Var4, nl3Var2, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        List listD4 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD5 = wq3.d(ys4Var, jSONObject, "doubletap_actions", this.a.k1);
        List listD6 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD7 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "gif_url", w36.e, bt4.b, l66Var2);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = lh1.f;
        }
        x02 x02Var2 = x02Var;
        List listD8 = wq3.d(ys4Var, jSONObject, "hover_end_actions", this.a.k1);
        List listD9 = wq3.d(ys4Var, jSONObject, "hover_start_actions", this.a.k1);
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        List listD10 = wq3.d(ys4Var, jSONObject, "longtap_actions", this.a.k1);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        p36 p36Var = w36.f;
        nl3 nl3Var6 = bt4.a;
        xr2 xr2Var5 = lh1.g;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "placeholder_color", p36Var, nl3Var6, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA9 == null ? xr2Var5 : as2VarA9;
        xr2 xr2Var6 = lh1.h;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "preload_required", o36Var, nl3Var4, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA10 == null ? xr2Var6 : as2VarA10;
        List listD11 = wq3.d(ys4Var, jSONObject, "press_end_actions", this.a.k1);
        List listD12 = wq3.d(ys4Var, jSONObject, "press_start_actions", this.a.k1);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "preview", u36Var);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var5, lh1.t, (as2) null);
        m36 m36Var5 = lh1.p;
        nl3 nl3Var7 = vi1.d;
        xr2 xr2Var7 = lh1.i;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "scale", m36Var5, nl3Var7, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA12 == null ? xr2Var7 : as2VarA12;
        List listD13 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        List listD14 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, lh1.u, l66Var2);
        List listD15 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD16 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var6 = lh1.q;
        nl3 nl3Var8 = ri2.d;
        as2 as2Var8 = lh1.j;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "visibility", m36Var6, nl3Var8, l66Var2, as2Var8);
        if (as2VarA13 != null) {
            as2Var8 = as2VarA13;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD17 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = lh1.k;
        }
        return new eh1(mr0Var, xr0Var, k11Var2, listD, as2VarA, as2VarA2, as2Var, listD2, b31Var, listD3, f51Var, as2Var2, as2VarA5, as2Var3, as2Var4, listD4, listD5, listD6, hf1Var, listD7, as2VarA8, x02Var2, listD8, listD9, str, to1Var, listD10, yc1Var, yc1Var2, as2Var5, as2Var6, listD11, listD12, as2VarB, as2VarB2, as2VarA11, as2Var7, listD13, listD14, bd2Var, j61Var, s21Var, s21Var2, listA, listD15, listD16, as2Var8, si2Var, listD17, x02Var3);
    }
}
