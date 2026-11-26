package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class el1 implements kv5 {
    public final tq3 a;

    public el1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final xl1 a(ys4 ys4Var, xl1 xl1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, xl1Var != null ? xl1Var.a : null, this.a.I);
        m36 m36Var = gl1.q;
        zw2 zw2Var = xl1Var != null ? xl1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        m36 m36Var2 = gl1.r;
        zw2 zw2Var2 = xl1Var != null ? xl1Var.c : null;
        nl3 nl3Var2 = h11.d;
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var2, zD, zw2Var2, nl3Var2, l66Var);
        r36 r36Var = w36.d;
        zw2 zw2Var3 = xl1Var != null ? xl1Var.d : null;
        nl3 nl3Var3 = bt4.d;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", r36Var, zD, zw2Var3, nl3Var3, gl1.A);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, xl1Var != null ? xl1Var.e : null, this.a.u1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "autocapitalization", gl1.s, zD, xl1Var != null ? xl1Var.f : null, yj1.d, l66Var);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, xl1Var != null ? xl1Var.g : null, this.a.G1);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "border", zD, xl1Var != null ? xl1Var.h : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var4 = xl1Var != null ? xl1Var.i : null;
        nl3 nl3Var4 = bt4.e;
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var4, nl3Var4, gl1.B);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, xl1Var != null ? xl1Var.j : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "enter_key_actions", zD, xl1Var != null ? xl1Var.k : null, this.a.l1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "enter_key_type", gl1.t, zD, xl1Var != null ? xl1Var.l : null, ak1.d, l66Var);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "extensions", zD, xl1Var != null ? xl1Var.m : null, this.a.b3);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "filters", zD, xl1Var != null ? xl1Var.n : null, this.a.p4);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "focus", zD, xl1Var != null ? xl1Var.o : null, this.a.z3);
        u36 u36Var = w36.c;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "font_family", u36Var, zD, xl1Var != null ? xl1Var.p : null);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, xl1Var != null ? xl1Var.q : null, nl3Var4, gl1.C);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "font_size_unit", gl1.u, zD, xl1Var != null ? xl1Var.r : null, g12.d, l66Var);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h, zD, xl1Var != null ? xl1Var.s : null);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, gl1.v, zD, xl1Var != null ? xl1Var.t : null, tf1.d, l66Var);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "font_weight_value", s36Var, zD, xl1Var != null ? xl1Var.u : null, nl3Var4, gl1.D);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, xl1Var != null ? xl1Var.v : null, this.a.I3);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, xl1Var != null ? xl1Var.w : null, this.a.U6);
        p36 p36Var = w36.f;
        zw2 zw2Var5 = xl1Var != null ? xl1Var.x : null;
        nl3 nl3Var5 = bt4.a;
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "highlight_color", p36Var, zD, zw2Var5, nl3Var5, l66Var);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "hint_color", p36Var, zD, xl1Var != null ? xl1Var.y : null, nl3Var5, l66Var);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "hint_text", u36Var, zD, xl1Var != null ? xl1Var.z : null);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, xl1Var != null ? xl1Var.A : null);
        o36 o36Var = w36.a;
        zw2 zw2Var6 = xl1Var != null ? xl1Var.B : null;
        nl3 nl3Var6 = bt4.c;
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "is_enabled", o36Var, zD, zw2Var6, nl3Var6, l66Var);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "keyboard_type", gl1.w, zD, xl1Var != null ? xl1Var.C : null, ck1.d, l66Var);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, xl1Var != null ? xl1Var.D : null, this.a.K4);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "letter_spacing", r36Var, zD, xl1Var != null ? xl1Var.E : null, nl3Var3, l66Var);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "line_height", s36Var, zD, xl1Var != null ? xl1Var.F : null, nl3Var4, gl1.E);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "margins", zD, xl1Var != null ? xl1Var.G : null, this.a.Y2);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "mask", zD, xl1Var != null ? xl1Var.H : null, this.a.s4);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "max_length", s36Var, zD, xl1Var != null ? xl1Var.I : null, nl3Var4, gl1.F);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "max_visible_lines", s36Var, zD, xl1Var != null ? xl1Var.J : null, nl3Var4, gl1.G);
        zw2 zw2VarB30 = pq3.b(tr4VarB, jSONObject, "native_interface", zD, xl1Var != null ? xl1Var.K : null, this.a.H4);
        zw2 zw2VarB31 = pq3.b(tr4VarB, jSONObject, "paddings", zD, xl1Var != null ? xl1Var.L : null, this.a.Y2);
        zw2 zw2VarB32 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, xl1Var != null ? xl1Var.M : null);
        zw2 zw2VarB33 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, xl1Var != null ? xl1Var.N : null, nl3Var4, gl1.H);
        zw2 zw2VarB34 = pq3.b(tr4VarB, jSONObject, "select_all_on_focus", o36Var, zD, xl1Var != null ? xl1Var.O : null, nl3Var6, l66Var);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, xl1Var != null ? xl1Var.P : null, this.a.l1);
        zw2 zw2VarB35 = pq3.b(tr4VarB, jSONObject, "text_alignment_horizontal", gl1.x, zD, xl1Var != null ? xl1Var.Q : null, nl3Var, l66Var);
        zw2 zw2VarB36 = pq3.b(tr4VarB, jSONObject, "text_alignment_vertical", gl1.y, zD, xl1Var != null ? xl1Var.R : null, nl3Var2, l66Var);
        zw2 zw2VarB37 = pq3.b(tr4VarB, jSONObject, "text_color", p36Var, zD, xl1Var != null ? xl1Var.S : null, nl3Var5, l66Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "text_variable", zD, xl1Var != null ? xl1Var.T : null);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, xl1Var != null ? xl1Var.U : null, this.a.P8);
        zw2 zw2VarB38 = pq3.b(tr4VarB, jSONObject, "transform", zD, xl1Var != null ? xl1Var.V : null, this.a.S8);
        zw2 zw2VarB39 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, xl1Var != null ? xl1Var.W : null, this.a.V1);
        zw2 zw2VarB40 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, xl1Var != null ? xl1Var.X : null, this.a.A1);
        zw2 zw2VarB41 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, xl1Var != null ? xl1Var.Y : null, this.a.A1);
        zw2 zw2Var7 = xl1Var != null ? xl1Var.Z : null;
        nl3 nl3Var7 = pd2.d;
        st3 st3Var = gl1.I;
        st3Var.getClass();
        return new xl1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarB5, zw2VarC2, zw2VarB6, zw2VarB7, zw2VarC3, zw2VarC4, zw2VarB8, zw2VarC5, zw2VarC6, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarC7, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarB26, zw2VarB27, zw2VarB28, zw2VarB29, zw2VarB30, zw2VarB31, zw2VarB32, zw2VarB33, zw2VarB34, zw2VarC8, zw2VarB35, zw2VarB36, zw2VarB37, zw2VarA, zw2VarC9, zw2VarB38, zw2VarB39, zw2VarB40, zw2VarB41, pq3.a(tr4VarB, jSONObject, zD, zw2Var7, nl3Var7, st3Var), pq3.c(tr4VarB, jSONObject, "validators", zD, xl1Var != null ? xl1Var.a0 : null, this.a.B4), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, xl1Var != null ? xl1Var.b0 : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, xl1Var != null ? xl1Var.c0 : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", gl1.z, zD, xl1Var != null ? xl1Var.d0 : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, xl1Var != null ? xl1Var.e0 : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, xl1Var != null ? xl1Var.f0 : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, xl1Var != null ? xl1Var.g0 : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
