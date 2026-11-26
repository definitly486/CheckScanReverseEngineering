package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dl1 implements ln0 {
    public final tq3 a;

    public dl1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ek1 a(ys4 ys4Var, JSONObject jSONObject) {
        mr0 mr0Var = (mr0) wq3.c(ys4Var, jSONObject, "accessibility", this.a.H);
        m36 m36Var = gl1.q;
        nl3 nl3Var = f11.d;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_horizontal", m36Var, nl3Var);
        m36 m36Var2 = gl1.r;
        nl3 nl3Var2 = h11.d;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "alignment_vertical", m36Var2, nl3Var2);
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var = gl1.A;
        xr2 xr2Var = gl1.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var3, l66Var, xr2Var);
        as2 as2Var = as2VarA3 == null ? xr2Var : as2VarA3;
        List listD = wq3.d(ys4Var, jSONObject, "animators", this.a.t1);
        m36 m36Var3 = gl1.s;
        nl3 nl3Var4 = yj1.d;
        xr2 xr2Var2 = gl1.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "autocapitalization", m36Var3, nl3Var4, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        List listD2 = wq3.d(ys4Var, jSONObject, "background", this.a.F1);
        f51 f51Var = (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1);
        s36 s36Var = w36.b;
        nl3 nl3Var5 = bt4.e;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "column_span", s36Var, nl3Var5, gl1.B, (as2) null);
        List listD3 = wq3.d(ys4Var, jSONObject, "disappear_actions", this.a.O2);
        List listD4 = wq3.d(ys4Var, jSONObject, "enter_key_actions", this.a.k1);
        m36 m36Var4 = gl1.t;
        nl3 nl3Var6 = ak1.d;
        xr2 xr2Var3 = gl1.c;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "enter_key_type", m36Var4, nl3Var6, l66Var2, xr2Var3);
        as2 as2Var3 = as2VarA6 == null ? xr2Var3 : as2VarA6;
        List listD5 = wq3.d(ys4Var, jSONObject, "extensions", this.a.a3);
        List listD6 = wq3.d(ys4Var, jSONObject, "filters", this.a.o4);
        hf1 hf1Var = (hf1) wq3.c(ys4Var, jSONObject, "focus", this.a.y3);
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "font_family", u36Var);
        l66 l66Var3 = gl1.C;
        xr2 xr2Var4 = gl1.d;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "font_size", s36Var, nl3Var5, l66Var3, xr2Var4);
        as2 as2Var4 = as2VarA7 == null ? xr2Var4 : as2VarA7;
        m36 m36Var5 = gl1.u;
        nl3 nl3Var7 = g12.d;
        xr2 xr2Var5 = gl1.e;
        as2 as2VarA8 = oq3.a(ys4Var, jSONObject, "font_size_unit", m36Var5, nl3Var7, l66Var2, xr2Var5);
        as2 as2Var5 = as2VarA8 == null ? xr2Var5 : as2VarA8;
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h);
        as2 as2VarA9 = oq3.a(ys4Var, jSONObject, FontsContractCompat.Columns.WEIGHT, gl1.v, tf1.d);
        as2 as2VarA10 = oq3.a(ys4Var, jSONObject, "font_weight_value", s36Var, nl3Var5, gl1.D, (as2) null);
        List listD7 = wq3.d(ys4Var, jSONObject, "functions", this.a.H3);
        x02 x02Var = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.T6);
        if (x02Var == null) {
            x02Var = gl1.f;
        }
        x02 x02Var2 = x02Var;
        p36 p36Var = w36.f;
        nl3 nl3Var8 = bt4.a;
        as2 as2VarA11 = oq3.a(ys4Var, jSONObject, "highlight_color", p36Var, nl3Var8);
        xr2 xr2Var6 = gl1.g;
        as2 as2VarA12 = oq3.a(ys4Var, jSONObject, "hint_color", p36Var, nl3Var8, l66Var2, xr2Var6);
        as2 as2Var6 = as2VarA12 == null ? xr2Var6 : as2VarA12;
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, "hint_text", u36Var);
        String str = (String) wq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID);
        o36 o36Var = w36.a;
        nl3 nl3Var9 = bt4.c;
        xr2 xr2Var7 = gl1.h;
        as2 as2VarA13 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var9, l66Var2, xr2Var7);
        as2 as2Var7 = as2VarA13 == null ? xr2Var7 : as2VarA13;
        m36 m36Var6 = gl1.w;
        nl3 nl3Var10 = ck1.d;
        xr2 xr2Var8 = gl1.i;
        as2 as2VarA14 = oq3.a(ys4Var, jSONObject, "keyboard_type", m36Var6, nl3Var10, l66Var2, xr2Var8);
        as2 as2Var8 = as2VarA14 == null ? xr2Var8 : as2VarA14;
        to1 to1Var = (to1) wq3.c(ys4Var, jSONObject, "layout_provider", this.a.J4);
        xr2 xr2Var9 = gl1.j;
        as2 as2VarA15 = oq3.a(ys4Var, jSONObject, "letter_spacing", r36Var, nl3Var3, l66Var2, xr2Var9);
        as2 as2Var9 = as2VarA15 == null ? xr2Var9 : as2VarA15;
        as2 as2VarA16 = oq3.a(ys4Var, jSONObject, "line_height", s36Var, nl3Var5, gl1.E, (as2) null);
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        kl1 kl1Var = (kl1) wq3.c(ys4Var, jSONObject, "mask", this.a.r4);
        as2 as2VarA17 = oq3.a(ys4Var, jSONObject, "max_length", s36Var, nl3Var5, gl1.F, (as2) null);
        as2 as2VarA18 = oq3.a(ys4Var, jSONObject, "max_visible_lines", s36Var, nl3Var5, gl1.G, (as2) null);
        dk1 dk1Var = (dk1) wq3.c(ys4Var, jSONObject, "native_interface", this.a.G4);
        yc1 yc1Var2 = (yc1) wq3.c(ys4Var, jSONObject, "paddings", this.a.X2);
        as2 as2VarB4 = oq3.b(ys4Var, jSONObject, "reuse_id", u36Var);
        as2 as2VarA19 = oq3.a(ys4Var, jSONObject, "row_span", s36Var, nl3Var5, gl1.H, (as2) null);
        xr2 xr2Var10 = gl1.k;
        as2 as2VarA20 = oq3.a(ys4Var, jSONObject, "select_all_on_focus", o36Var, nl3Var9, l66Var2, xr2Var10);
        as2 as2Var10 = as2VarA20 == null ? xr2Var10 : as2VarA20;
        List listD8 = wq3.d(ys4Var, jSONObject, "selected_actions", this.a.k1);
        m36 m36Var7 = gl1.x;
        xr2 xr2Var11 = gl1.l;
        as2 as2VarA21 = oq3.a(ys4Var, jSONObject, "text_alignment_horizontal", m36Var7, nl3Var, l66Var2, xr2Var11);
        as2 as2Var11 = as2VarA21 == null ? xr2Var11 : as2VarA21;
        m36 m36Var8 = gl1.y;
        xr2 xr2Var12 = gl1.m;
        as2 as2VarA22 = oq3.a(ys4Var, jSONObject, "text_alignment_vertical", m36Var8, nl3Var2, l66Var2, xr2Var12);
        as2 as2Var12 = as2VarA22 == null ? xr2Var12 : as2VarA22;
        xr2 xr2Var13 = gl1.n;
        as2 as2VarA23 = oq3.a(ys4Var, jSONObject, "text_color", p36Var, nl3Var8, l66Var2, xr2Var13);
        as2 as2Var13 = as2VarA23 == null ? xr2Var13 : as2VarA23;
        String str2 = (String) wq3.a("text_variable", jSONObject);
        List listD9 = wq3.d(ys4Var, jSONObject, "tooltips", this.a.O8);
        bd2 bd2Var = (bd2) wq3.c(ys4Var, jSONObject, "transform", this.a.R8);
        j61 j61Var = (j61) wq3.c(ys4Var, jSONObject, "transition_change", this.a.U1);
        s21 s21Var = (s21) wq3.c(ys4Var, jSONObject, "transition_in", this.a.z1);
        s21 s21Var2 = (s21) wq3.c(ys4Var, jSONObject, "transition_out", this.a.z1);
        List listA = wq3.a(ys4Var, jSONObject, "transition_triggers", pd2.d, gl1.I, l66Var2);
        List listD10 = wq3.d(ys4Var, jSONObject, "validators", this.a.A4);
        List listD11 = wq3.d(ys4Var, jSONObject, "variable_triggers", this.a.U8);
        List listD12 = wq3.d(ys4Var, jSONObject, "variables", this.a.a9);
        m36 m36Var9 = gl1.z;
        nl3 nl3Var11 = ri2.d;
        as2 as2Var14 = gl1.o;
        as2 as2VarA24 = oq3.a(ys4Var, jSONObject, "visibility", m36Var9, nl3Var11, l66Var2, as2Var14);
        if (as2VarA24 != null) {
            as2Var14 = as2VarA24;
        }
        si2 si2Var = (si2) wq3.c(ys4Var, jSONObject, "visibility_action", this.a.m9);
        List listD13 = wq3.d(ys4Var, jSONObject, "visibility_actions", this.a.m9);
        x02 x02Var3 = (x02) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.T6);
        if (x02Var3 == null) {
            x02Var3 = gl1.p;
        }
        return new ek1(mr0Var, as2VarA, as2VarA2, as2Var, listD, as2Var2, listD2, f51Var, as2VarA5, listD3, listD4, as2Var3, listD5, listD6, hf1Var, as2VarB, as2Var4, as2Var5, as2VarB2, as2VarA9, as2VarA10, listD7, x02Var2, as2VarA11, as2Var6, as2VarB3, str, as2Var7, as2Var8, to1Var, as2Var9, as2VarA16, yc1Var, kl1Var, as2VarA17, as2VarA18, dk1Var, yc1Var2, as2VarB4, as2VarA19, as2Var10, listD8, as2Var11, as2Var12, as2Var13, str2, listD9, bd2Var, j61Var, s21Var, s21Var2, listA, listD10, listD11, listD12, as2Var14, si2Var, listD13, x02Var3);
    }
}
