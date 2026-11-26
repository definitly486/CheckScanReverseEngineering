package yads;

import androidx.core.provider.FontsContractCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c92 implements kv5 {
    public final tq3 a;

    public c92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final fb2 a(ys4 ys4Var, fb2 fb2Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, fb2Var != null ? fb2Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, fb2Var != null ? fb2Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, fb2Var != null ? fb2Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, fb2Var != null ? fb2Var.d : null, this.a.l1);
        m36 m36Var = e92.r;
        zw2 zw2Var = fb2Var != null ? fb2Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        m36 m36Var2 = e92.s;
        zw2 zw2Var2 = fb2Var != null ? fb2Var.f : null;
        nl3 nl3Var2 = h11.d;
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var2, zD, zw2Var2, nl3Var2, l66Var);
        r36 r36Var = w36.d;
        zw2 zw2Var3 = fb2Var != null ? fb2Var.g : null;
        nl3 nl3Var3 = bt4.d;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", r36Var, zD, zw2Var3, nl3Var3, e92.B);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, fb2Var != null ? fb2Var.h : null, this.a.u1);
        o36 o36Var = w36.a;
        zw2 zw2Var4 = fb2Var != null ? fb2Var.i : null;
        nl3 nl3Var4 = bt4.c;
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "auto_ellipsize", o36Var, zD, zw2Var4, nl3Var4, l66Var);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, fb2Var != null ? fb2Var.j : null, this.a.G1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "border", zD, fb2Var != null ? fb2Var.k : null, this.a.M1);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", o36Var, zD, fb2Var != null ? fb2Var.l : null, nl3Var4, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var5 = fb2Var != null ? fb2Var.m : null;
        nl3 nl3Var5 = bt4.e;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var5, nl3Var5, e92.C);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, fb2Var != null ? fb2Var.n : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, fb2Var != null ? fb2Var.o : null, this.a.l1);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "ellipsis", zD, fb2Var != null ? fb2Var.p : null, this.a.A8);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, fb2Var != null ? fb2Var.q : null, this.a.b3);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "focus", zD, fb2Var != null ? fb2Var.r : null, this.a.z3);
        p36 p36Var = w36.f;
        zw2 zw2Var6 = fb2Var != null ? fb2Var.s : null;
        nl3 nl3Var6 = bt4.a;
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "focused_text_color", p36Var, zD, zw2Var6, nl3Var6, l66Var);
        u36 u36Var = w36.c;
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "font_family", u36Var, zD, fb2Var != null ? fb2Var.t : null);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "font_feature_settings", u36Var, zD, fb2Var != null ? fb2Var.u : null);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "font_size", s36Var, zD, fb2Var != null ? fb2Var.v : null, nl3Var5, e92.D);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "font_size_unit", e92.t, zD, fb2Var != null ? fb2Var.w : null, g12.d, l66Var);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.VARIATION_SETTINGS, w36.h, zD, fb2Var != null ? fb2Var.x : null);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, FontsContractCompat.Columns.WEIGHT, e92.u, zD, fb2Var != null ? fb2Var.y : null, tf1.d, l66Var);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "font_weight_value", s36Var, zD, fb2Var != null ? fb2Var.z : null, nl3Var5, e92.E);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, fb2Var != null ? fb2Var.A : null, this.a.I3);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, fb2Var != null ? fb2Var.B : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, fb2Var != null ? fb2Var.C : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, fb2Var != null ? fb2Var.D : null, this.a.l1);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, fb2Var != null ? fb2Var.E : null);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "images", zD, fb2Var != null ? fb2Var.F : null, this.a.u8);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, fb2Var != null ? fb2Var.G : null, this.a.K4);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "letter_spacing", r36Var, zD, fb2Var != null ? fb2Var.H : null, nl3Var3, l66Var);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "line_height", s36Var, zD, fb2Var != null ? fb2Var.I : null, nl3Var5, e92.F);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, fb2Var != null ? fb2Var.J : null, this.a.l1);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "margins", zD, fb2Var != null ? fb2Var.K : null, this.a.Y2);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "max_lines", s36Var, zD, fb2Var != null ? fb2Var.L : null, nl3Var5, e92.G);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "min_hidden_lines", s36Var, zD, fb2Var != null ? fb2Var.M : null, nl3Var5, e92.H);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "paddings", zD, fb2Var != null ? fb2Var.N : null, this.a.Y2);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, fb2Var != null ? fb2Var.O : null, this.a.l1);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, fb2Var != null ? fb2Var.P : null, this.a.l1);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "ranges", zD, fb2Var != null ? fb2Var.Q : null, this.a.r8);
        zw2 zw2VarB30 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, fb2Var != null ? fb2Var.R : null);
        zw2 zw2VarB31 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, fb2Var != null ? fb2Var.S : null, nl3Var5, e92.I);
        zw2 zw2VarB32 = pq3.b(tr4VarB, jSONObject, "selectable", o36Var, zD, fb2Var != null ? fb2Var.T : null, nl3Var4, l66Var);
        zw2 zw2VarC15 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, fb2Var != null ? fb2Var.U : null, this.a.l1);
        m36 m36Var3 = e92.v;
        zw2 zw2Var7 = fb2Var != null ? fb2Var.V : null;
        nl3 nl3Var7 = bp1.d;
        zw2 zw2VarB33 = pq3.b(tr4VarB, jSONObject, "strike", m36Var3, zD, zw2Var7, nl3Var7, l66Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "text", u36Var, zD, fb2Var != null ? fb2Var.W : null);
        zw2 zw2VarB34 = pq3.b(tr4VarB, jSONObject, "text_alignment_horizontal", e92.w, zD, fb2Var != null ? fb2Var.X : null, nl3Var, l66Var);
        zw2 zw2VarB35 = pq3.b(tr4VarB, jSONObject, "text_alignment_vertical", e92.x, zD, fb2Var != null ? fb2Var.Y : null, nl3Var2, l66Var);
        zw2 zw2VarB36 = pq3.b(tr4VarB, jSONObject, "text_color", p36Var, zD, fb2Var != null ? fb2Var.Z : null, nl3Var6, l66Var);
        zw2 zw2VarB37 = pq3.b(tr4VarB, jSONObject, "text_gradient", zD, fb2Var != null ? fb2Var.a0 : null, this.a.W7);
        zw2 zw2VarB38 = pq3.b(tr4VarB, jSONObject, "text_shadow", zD, fb2Var != null ? fb2Var.b0 : null, this.a.I6);
        zw2 zw2VarB39 = pq3.b(tr4VarB, jSONObject, "tighten_width", o36Var, zD, fb2Var != null ? fb2Var.c0 : null, nl3Var4, l66Var);
        zw2 zw2VarC16 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, fb2Var != null ? fb2Var.d0 : null, this.a.P8);
        zw2 zw2VarB40 = pq3.b(tr4VarB, jSONObject, "transform", zD, fb2Var != null ? fb2Var.e0 : null, this.a.S8);
        zw2 zw2VarB41 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, fb2Var != null ? fb2Var.f0 : null, this.a.V1);
        zw2 zw2VarB42 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, fb2Var != null ? fb2Var.g0 : null, this.a.A1);
        zw2 zw2VarB43 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, fb2Var != null ? fb2Var.h0 : null, this.a.A1);
        zw2 zw2Var8 = fb2Var != null ? fb2Var.i0 : null;
        nl3 nl3Var8 = pd2.d;
        st3 st3Var = e92.J;
        st3Var.getClass();
        return new fb2(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarB7, zw2VarC3, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarC4, zw2VarC5, zw2VarB11, zw2VarC6, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarC7, zw2VarB21, zw2VarC8, zw2VarC9, zw2VarB22, zw2VarC10, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarC11, zw2VarB26, zw2VarB27, zw2VarB28, zw2VarB29, zw2VarC12, zw2VarC13, zw2VarC14, zw2VarB30, zw2VarB31, zw2VarB32, zw2VarC15, zw2VarB33, zw2VarA, zw2VarB34, zw2VarB35, zw2VarB36, zw2VarB37, zw2VarB38, zw2VarB39, zw2VarC16, zw2VarB40, zw2VarB41, zw2VarB42, zw2VarB43, pq3.a(tr4VarB, jSONObject, zD, zw2Var8, nl3Var8, st3Var), pq3.b(tr4VarB, jSONObject, "truncate", e92.y, zD, fb2Var != null ? fb2Var.j0 : null, a82.d, l66Var), pq3.b(tr4VarB, jSONObject, TtmlNode.UNDERLINE, e92.z, zD, fb2Var != null ? fb2Var.k0 : null, nl3Var7, l66Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, fb2Var != null ? fb2Var.l0 : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, fb2Var != null ? fb2Var.m0 : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", e92.A, zD, fb2Var != null ? fb2Var.n0 : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, fb2Var != null ? fb2Var.o0 : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, fb2Var != null ? fb2Var.p0 : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, fb2Var != null ? fb2Var.q0 : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
