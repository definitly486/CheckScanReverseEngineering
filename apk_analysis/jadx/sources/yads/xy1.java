package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xy1 implements ln0 {
    public final tq3 a;

    public xy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final uy1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", az1.j, f11.d);
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", az1.k, h11.d);
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = az1.o;
        xr2 xr2Var = az1.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var2, az1.p, (as2) null);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "font_family", u36Var);
        l66 l66Var2 = az1.q;
        xr2 xr2Var2 = az1.b;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var2, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA5 == null ? xr2Var2 : as2VarA5;
        m36 m36Var = az1.l;
        nl3 nl3Var3 = g12.d;
        xr2 xr2Var3 = az1.c;
        l66 l66Var3 = uq3.a;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var, nl3Var3, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, az1.m, tf1.d);
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "font_weight_value", s36Var, nl3Var2, az1.r, (as2) null);
        List listD5 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = az1.d;
        }
        x02 x02Var2 = x02Var;
        p36 p36Var = w36.f;
        nl3 nl3Var4 = bt4.a;
        xr2 xr2Var4 = az1.e;
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, "hint_color", p36Var, nl3Var4, l66Var3, xr2Var4);
        as2 as2Var4 = as2VarA9 == null ? xr2Var4 : as2VarA9;
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, "hint_text", u36Var);
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        xr2 xr2Var5 = az1.f;
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var, l66Var3, xr2Var5);
        as2 as2Var5 = as2VarA10 == null ? xr2Var5 : as2VarA10;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "line_height", s36Var, nl3Var2, az1.s, (as2) null);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        List listA = wq3.a(ys4Var, jSONObject, "options", this.a.y6, az1.t);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        as2 as2VarB4 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var2, az1.u, (as2) null);
        List listD6 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        xr2 xr2Var6 = az1.g;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "text_color", p36Var, nl3Var4, l66Var3, xr2Var6);
        as2 as2Var6 = as2VarA13 == null ? xr2Var6 : as2VarA13;
        List listD7 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA2 = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, az1.v, l66Var3);
        String str2 = (String) wq3.a("value_variable", jSONObject);
        List listD8 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD9 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var2 = az1.n;
        nl3 nl3Var5 = ri2.d;
        as2 as2Var7 = az1.h;
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "visibility", m36Var2, nl3Var5, l66Var3, as2Var7);
        if (as2VarA14 != null) {
            as2Var7 = as2VarA14;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD10 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = az1.i;
        }
        return new uy1(mr0Var, as2VarA, as2VarA2, as2Var, listD, listD2, f51Var, as2VarA4, listD3, listD4, hf1Var, as2VarB, as2Var2, as2Var3, as2VarB2, as2VarA7, as2VarA8, listD5, x02Var2, as2Var4, as2VarB3, str, to1Var, as2Var5, as2VarA11, yc1Var, listA, yc1Var2, as2VarB4, as2VarA12, listD6, as2Var6, listD7, bd2Var, j61Var, s21Var, s21Var2, listA2, str2, listD8, listD9, as2Var7, si2Var, listD10, x02Var3);
    }
}
