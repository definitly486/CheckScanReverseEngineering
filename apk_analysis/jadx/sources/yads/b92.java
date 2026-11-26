package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b92 implements ln0 {
    public final tq3 a;

    public b92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final b82 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        xr0 xr0Var = (xr0) wq3.c(ys4Var, jSONObject, "action", this.a.k1);
        k11 k11Var = (k11) wq3.c(ys4Var, jSONObject, "action_animation", this.a.q1);
        if (k11Var == null) {
            k11Var = e92.a;
        }
        k11 k11Var2 = k11Var;
        List listD = wq3.d(ys4Var, jSONObject, "actions", this.a.k1);
        m36 m36Var = e92.r;
        nl3 nl3Var = f11.d;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        m36 m36Var2 = e92.s;
        nl3 nl3Var2 = h11.d;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = e92.B;
        xr2 xr2Var = e92.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var3, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD2 = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "auto_ellipsize", o36Var, nl3Var4);
        List listD3 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        xr2 xr2Var2 = e92.c;
        l66 l66Var2 = uq3.a;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "capture_focus_on_action", o36Var, nl3Var4, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var5, e92.C, (as2) null);
        List listD4 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD5 = wq3.d(ys4Var, jSONObject, "doubletap_actions", this.a.k1);
        r72 r72Var = (r72) wq3.c(ys4Var, jSONObject, "ellipsis", this.a.z8);
        List listD6 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        p36 p36Var = w36.f;
        nl3 nl3Var6 = bt4.a;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "focused_text_color", p36Var, nl3Var6);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "font_family", u36Var);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "font_feature_settings", u36Var);
        l66 l66Var3 = e92.D;
        xr2 xr2Var3 = e92.d;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var5, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA8 == null ? xr2Var3 : as2VarA8;
        m36 m36Var3 = e92.t;
        nl3 nl3Var7 = g12.d;
        xr2 xr2Var4 = e92.e;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var3, nl3Var7, l66Var2, xr2Var4);
        as2 as2Var4 = as2VarA9 == null ? xr2Var4 : as2VarA9;
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, e92.u, tf1.d);
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "font_weight_value", s36Var, nl3Var5, e92.E, (as2) null);
        List listD7 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = e92.f;
        }
        x02 x02Var2 = x02Var;
        List listD8 = wq3.d(ys4Var, jSONObject, "hover_end_actions", this.a.k1);
        List listD9 = wq3.d(ys4Var, jSONObject, "hover_start_actions", this.a.k1);
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        List listD10 = wq3.d(ys4Var, jSONObject, "images", this.a.t8);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        xr2 xr2Var5 = e92.g;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var3, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA12 == null ? xr2Var5 : as2VarA12;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "line_height", s36Var, nl3Var5, e92.F, (as2) null);
        List listD11 = wq3.d(ys4Var, jSONObject, "longtap_actions", this.a.k1);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "max_lines", s36Var, nl3Var5, e92.G, (as2) null);
        as2 as2VarA15 = oq3.a(ys4Var, jSONObject, "min_hidden_lines", s36Var, nl3Var5, e92.H, (as2) null);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        List listD12 = wq3.d(ys4Var, jSONObject, "press_end_actions", this.a.k1);
        List listD13 = wq3.d(ys4Var, jSONObject, "press_start_actions", this.a.k1);
        List listD14 = wq3.d(ys4Var, jSONObject, "ranges", this.a.q8);
        as2 as2VarB4 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA16 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var5, e92.I, (as2) null);
        xr2 xr2Var6 = e92.h;
        as2 as2VarA17 = oq3.a(ys4Var, jSONObject, "selectable", o36Var, nl3Var4, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA17 == null ? xr2Var6 : as2VarA17;
        List listD15 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        m36 m36Var4 = e92.v;
        nl3 nl3Var8 = bp1.d;
        xr2 xr2Var7 = e92.i;
        as2 as2VarA18 = oq3.a(ys4Var, jSONObject, "strike", m36Var4, nl3Var8, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA18 == null ? xr2Var7 : as2VarA18;
        as2 as2VarA19 = oq3.a(ys4Var, jSONObject, "text", u36Var);
        m36 m36Var5 = e92.w;
        xr2 xr2Var8 = e92.j;
        as2 as2VarA20 = oq3.a(ys4Var, jSONObject, "text_alignment_horizontal", m36Var5, nl3Var, l66Var2, xr2Var8);
        as2 as2Var8 = as2VarA20 == null ? xr2Var8 : as2VarA20;
        m36 m36Var6 = e92.x;
        xr2 xr2Var9 = e92.k;
        as2 as2VarA21 = oq3.a(ys4Var, jSONObject, "text_alignment_vertical", m36Var6, nl3Var2, l66Var2, xr2Var9);
        as2 as2Var9 = as2VarA21 == null ? xr2Var9 : as2VarA21;
        xr2 xr2Var10 = e92.l;
        as2 as2VarA22 = oq3.a(ys4Var, jSONObject, "text_color", p36Var, nl3Var6, l66Var2, xr2Var10);
        as2 as2Var10 = as2VarA22 == null ? xr2Var10 : as2VarA22;
        m82 m82Var = (m82) wq3.c(ys4Var, jSONObject, "text_gradient", this.a.V7);
        xz1 xz1Var = (xz1) wq3.c(ys4Var, jSONObject, "text_shadow", this.a.H6);
        xr2 xr2Var11 = e92.m;
        as2 as2VarA23 = oq3.a(ys4Var, jSONObject, "tighten_width", o36Var, nl3Var4, l66Var2, xr2Var11);
        as2 as2Var11 = as2VarA23 == null ? xr2Var11 : as2VarA23;
        List listD16 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, e92.J, l66Var2);
        m36 m36Var7 = e92.y;
        nl3 nl3Var9 = a82.d;
        xr2 xr2Var12 = e92.n;
        as2 as2VarA24 = oq3.a(ys4Var, jSONObject, "truncate", m36Var7, nl3Var9, l66Var2, xr2Var12);
        as2 as2Var12 = as2VarA24 == null ? xr2Var12 : as2VarA24;
        m36 m36Var8 = e92.z;
        xr2 xr2Var13 = e92.o;
        as2 as2VarA25 = oq3.a(ys4Var, jSONObject, TtmlNode.UNDERLINE, m36Var8, nl3Var8, l66Var2, xr2Var13);
        as2 as2Var13 = as2VarA25 == null ? xr2Var13 : as2VarA25;
        List listD17 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD18 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var9 = e92.A;
        nl3 nl3Var10 = ri2.d;
        as2 as2Var14 = e92.p;
        as2 as2VarA26 = oq3.a(ys4Var, jSONObject, "visibility", m36Var9, nl3Var10, l66Var2, as2Var14);
        if (as2VarA26 != null) {
            as2Var14 = as2VarA26;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD19 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = e92.q;
        }
        return new b82(mr0Var, xr0Var, k11Var2, listD, as2VarA, as2VarA2, as2Var, listD2, as2VarA4, listD3, f51Var, as2Var2, as2VarA6, listD4, listD5, r72Var, listD6, hf1Var, as2VarA7, as2VarB, as2VarB2, as2Var3, as2Var4, as2VarB3, as2VarA10, as2VarA11, listD7, x02Var2, listD8, listD9, str, listD10, to1Var, as2Var5, as2VarA13, listD11, yc1Var, as2VarA14, as2VarA15, yc1Var2, listD12, listD13, listD14, as2VarB4, as2VarA16, as2Var6, listD15, as2Var7, as2VarA19, as2Var8, as2Var9, as2Var10, m82Var, xz1Var, as2Var11, listD16, bd2Var, j61Var, s21Var, s21Var2, listA, as2Var12, as2Var13, listD17, listD18, as2Var14, si2Var, listD19, x02Var3);
    }
}
