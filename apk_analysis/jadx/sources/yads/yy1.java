package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yy1 implements kv5 {
    public final tq3 a;

    public yy1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final fz1 a(ys4 ys4Var, fz1 fz1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, fz1Var != null ? fz1Var.a : null, this.a.I);
        m36 m36Var = az1.j;
        zw2 zw2Var = fz1Var != null ? fz1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", az1.k, zD, fz1Var != null ? fz1Var.c : null, h11.d, l66Var);
        r36 r36Var = w36.d;
        zw2 zw2Var2 = fz1Var != null ? fz1Var.d : null;
        nl3 nl3Var2 = bt4.d;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", r36Var, zD, zw2Var2, nl3Var2, az1.o);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, fz1Var != null ? fz1Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, fz1Var != null ? fz1Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, fz1Var != null ? fz1Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = fz1Var != null ? fz1Var.h : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var3, nl3Var3, az1.p);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, fz1Var != null ? fz1Var.i : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, fz1Var != null ? fz1Var.j : null, this.a.b3);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "focus", zD, fz1Var != null ? fz1Var.k : null, this.a.z3);
        u36 u36Var = w36.c;
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "font_family", u36Var, zD, fz1Var != null ? fz1Var.l : null);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, fz1Var != null ? fz1Var.m : null, nl3Var3, az1.q);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "font_size_unit", az1.l, zD, fz1Var != null ? fz1Var.n : null, g12.d, l66Var);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h, zD, fz1Var != null ? fz1Var.o : null);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, az1.m, zD, fz1Var != null ? fz1Var.p : null, tf1.d, l66Var);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "font_weight_value", s36Var, zD, fz1Var != null ? fz1Var.q : null, nl3Var3, az1.r);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, fz1Var != null ? fz1Var.r : null, this.a.I3);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, fz1Var != null ? fz1Var.s : null, this.a.U6);
        p36 p36Var = w36.f;
        zw2 zw2Var4 = fz1Var != null ? fz1Var.t : null;
        nl3 nl3Var4 = bt4.a;
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "hint_color", p36Var, zD, zw2Var4, nl3Var4, l66Var);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "hint_text", u36Var, zD, fz1Var != null ? fz1Var.u : null);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, fz1Var != null ? fz1Var.v : null);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, fz1Var != null ? fz1Var.w : null, this.a.K4);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "letter_spacing", r36Var, zD, fz1Var != null ? fz1Var.x : null, nl3Var2, l66Var);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "line_height", s36Var, zD, fz1Var != null ? fz1Var.y : null, nl3Var3, az1.s);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "margins", zD, fz1Var != null ? fz1Var.z : null, this.a.Y2);
        zw2 zw2Var5 = fz1Var != null ? fz1Var.A : null;
        defpackage.cl4 cl4Var = this.a.z6;
        st3 st3Var = az1.t;
        st3Var.getClass();
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "options", zD, zw2Var5, cl4Var, st3Var);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "paddings", zD, fz1Var != null ? fz1Var.B : null, this.a.Y2);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, fz1Var != null ? fz1Var.C : null);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, fz1Var != null ? fz1Var.D : null, nl3Var3, az1.u);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, fz1Var != null ? fz1Var.E : null, this.a.l1);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "text_color", p36Var, zD, fz1Var != null ? fz1Var.F : null, nl3Var4, l66Var);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, fz1Var != null ? fz1Var.G : null, this.a.P8);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transform", zD, fz1Var != null ? fz1Var.H : null, this.a.S8);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, fz1Var != null ? fz1Var.I : null, this.a.V1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, fz1Var != null ? fz1Var.J : null, this.a.A1);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, fz1Var != null ? fz1Var.K : null, this.a.A1);
        zw2 zw2Var6 = fz1Var != null ? fz1Var.L : null;
        nl3 nl3Var5 = pd2.d;
        st3 st3Var2 = az1.v;
        st3Var2.getClass();
        return new fz1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarC3, zw2VarC4, zw2VarB7, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarC5, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarA, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarC6, zw2VarB25, zw2VarC7, zw2VarB26, zw2VarB27, zw2VarB28, zw2VarB29, pq3.a(tr4VarB, jSONObject, zD, zw2Var6, nl3Var5, st3Var2), pq3.a(tr4VarB, jSONObject, "value_variable", zD, fz1Var != null ? fz1Var.M : null), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, fz1Var != null ? fz1Var.N : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, fz1Var != null ? fz1Var.O : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", az1.n, zD, fz1Var != null ? fz1Var.P : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, fz1Var != null ? fz1Var.Q : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, fz1Var != null ? fz1Var.R : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, fz1Var != null ? fz1Var.S : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
