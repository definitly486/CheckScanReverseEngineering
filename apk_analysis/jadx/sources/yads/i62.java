package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i62 implements ln0 {
    public final tq3 a;

    public i62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final y52 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", l62.m, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", l62.n, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = l62.p;
        xr2 xr2Var = l62.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, l62.q, (as2) null);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var2 = l62.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "dynamic_height", o36Var, nl3Var3, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        xr2 xr2Var3 = l62.c;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "has_separator", o36Var, nl3Var3, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = l62.d;
        }
        x02 x02Var2 = x02Var;
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        List listA = wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.S7, l62.r);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        xr2 xr2Var4 = l62.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "restrict_parent_scroll", o36Var, nl3Var3, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "reuse_id", w36.c);
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, l62.s, (as2) null);
        List listD6 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        l66 l66Var3 = l62.t;
        xr2 xr2Var5 = l62.f;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "selected_tab", s36Var, nl3Var2, l66Var3, xr2Var5);
        as2 as2Var5 = as2VarA9 == null ? xr2Var5 : as2VarA9;
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var6 = l62.g;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "separator_color", p36Var, nl3Var4, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA10 == null ? xr2Var6 : as2VarA10;
        yc1 yc1Var3 = (yc1) wq3.c(ys4Var, jSONObject, "separator_paddings", this.a.X2);
        if (yc1Var3 == null) {
            yc1Var3 = l62.h;
        }
        yc1 yc1Var4 = yc1Var3;
        xr2 xr2Var7 = l62.i;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "switch_tabs_by_content_swipe_enabled", o36Var, nl3Var3, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA11 == null ? xr2Var7 : as2VarA11;
        u52 u52Var = (u52) wq3.c(ys4Var, jSONObject, "tab_title_delimiter", this.a.P7);
        x52 x52Var = (x52) wq3.c(ys4Var, jSONObject, "tab_title_style", this.a.M7);
        yc1 yc1Var5 = (yc1) wq3.c(ys4Var, jSONObject, "title_paddings", this.a.X2);
        if (yc1Var5 == null) {
            yc1Var5 = l62.j;
        }
        yc1 yc1Var6 = yc1Var5;
        List listD7 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA2 = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, l62.u, l66Var2);
        List listD8 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD9 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var = l62.o;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var8 = l62.k;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "visibility", m36Var, nl3Var5, l66Var2, as2Var8);
        if (as2VarA12 != null) {
            as2Var8 = as2VarA12;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD10 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = l62.l;
        }
        return new y52(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, listD3, as2Var2, listD4, hf1Var, listD5, as2Var3, x02Var2, str, listA, to1Var, yc1Var, yc1Var2, as2Var4, as2VarB, as2VarA8, listD6, as2Var5, as2Var6, yc1Var4, as2Var7, u52Var, x52Var, yc1Var6, listD7, bd2Var, j61Var, s21Var, s21Var2, listA2, listD8, listD9, as2Var8, si2Var, listD10, x02Var3);
    }
}
