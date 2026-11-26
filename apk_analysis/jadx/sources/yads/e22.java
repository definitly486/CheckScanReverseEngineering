package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class e22 implements ln0 {
    public final tq3 a;

    public e22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final x12 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", h22.h, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", h22.i, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = h22.k;
        xr2 xr2Var = h22.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, h22.l, (as2) null);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = h22.b;
        }
        x02 x02Var2 = x02Var;
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var2 = h22.c;
        l66 l66Var2 = uq3.a;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var3, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        xr2 xr2Var3 = h22.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "max_value", s36Var, nl3Var2, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        xr2 xr2Var4 = h22.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "min_value", s36Var, nl3Var2, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        List listD6 = wq3.d(ys4Var, jSONObject, "ranges", this.a.f7);
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, h22.m, (as2) null);
        mr0 mr0Var2 = (mr0) wq3.c(ys4Var, jSONObject, "secondary_value_accessibility", this.a.H);
        List listD7 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        tc1 tc1Var = (tc1) wq3.c(ys4Var, jSONObject, "thumb_secondary_style", this.a.U2);
        w12 w12Var = (w12) wq3.c(ys4Var, jSONObject, "thumb_secondary_text_style", this.a.c7);
        String str2 = (String) wq3.a(ys4Var, jSONObject, "thumb_secondary_value_variable");
        tc1 tc1Var2 = (tc1) wq3.a(ys4Var, jSONObject, "thumb_style", this.a.U2);
        w12 w12Var2 = (w12) wq3.c(ys4Var, jSONObject, "thumb_text_style", this.a.c7);
        String str3 = (String) wq3.a(ys4Var, jSONObject, "thumb_value_variable");
        tc1 tc1Var3 = (tc1) wq3.c(ys4Var, jSONObject, "tick_mark_active_style", this.a.U2);
        tc1 tc1Var4 = (tc1) wq3.c(ys4Var, jSONObject, "tick_mark_inactive_style", this.a.U2);
        List listD8 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        tc1 tc1Var5 = (tc1) wq3.a(ys4Var, jSONObject, "track_active_style", this.a.U2);
        tc1 tc1Var6 = (tc1) wq3.a(ys4Var, jSONObject, "track_inactive_style", this.a.U2);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, h22.n, l66Var2);
        List listD9 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD10 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var = h22.j;
        nl3 nl3Var4 = ri2.d;
        as2 as2Var5 = h22.f;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "visibility", m36Var, nl3Var4, l66Var2, as2Var5);
        if (as2VarA9 != null) {
            as2Var5 = as2VarA9;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD11 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = h22.g;
        }
        return new x12(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, listD3, listD4, hf1Var, listD5, x02Var2, str, as2Var2, to1Var, yc1Var, as2Var3, as2Var4, yc1Var2, listD6, as2VarB, as2VarA8, mr0Var2, listD7, tc1Var, w12Var, str2, tc1Var2, w12Var2, str3, tc1Var3, tc1Var4, listD8, tc1Var5, tc1Var6, bd2Var, j61Var, s21Var, s21Var2, listA, listD9, listD10, as2Var5, si2Var, listD11, x02Var3);
    }
}
