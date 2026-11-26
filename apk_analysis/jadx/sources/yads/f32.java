package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f32 implements kv5 {
    public final tq3 a;

    public f32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final t32 a(ys4 ys4Var, t32 t32Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, t32Var != null ? t32Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, t32Var != null ? t32Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, t32Var != null ? t32Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, t32Var != null ? t32Var.d : null, this.a.l1);
        m36 m36Var = h32.i;
        zw2 zw2Var = t32Var != null ? t32Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", h32.j, zD, t32Var != null ? t32Var.f : null, h11.d, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, t32Var != null ? t32Var.g : null, bt4.d, h32.m);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, t32Var != null ? t32Var.h : null, this.a.u1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, t32Var != null ? t32Var.i : null, this.a.G1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "border", zD, t32Var != null ? t32Var.j : null, this.a.M1);
        o36 o36Var = w36.a;
        zw2 zw2Var2 = t32Var != null ? t32Var.k : null;
        nl3 nl3Var2 = bt4.c;
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", o36Var, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "clip_to_bounds", o36Var, zD, t32Var != null ? t32Var.l : null, nl3Var2, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = t32Var != null ? t32Var.m : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var3, nl3Var3, h32.n);
        u36 u36Var = w36.c;
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "default_state_id", u36Var, zD, t32Var != null ? t32Var.n : null);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, t32Var != null ? t32Var.o : null, this.a.P2);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "div_id", zD, t32Var != null ? t32Var.p : null);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, t32Var != null ? t32Var.q : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, t32Var != null ? t32Var.r : null, this.a.b3);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "focus", zD, t32Var != null ? t32Var.s : null, this.a.z3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, t32Var != null ? t32Var.t : null, this.a.I3);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, t32Var != null ? t32Var.u : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, t32Var != null ? t32Var.v : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, t32Var != null ? t32Var.w : null, this.a.l1);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, t32Var != null ? t32Var.x : null);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, t32Var != null ? t32Var.y : null, this.a.K4);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, t32Var != null ? t32Var.z : null, this.a.l1);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "margins", zD, t32Var != null ? t32Var.A : null, this.a.Y2);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "paddings", zD, t32Var != null ? t32Var.B : null, this.a.Y2);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, t32Var != null ? t32Var.C : null, this.a.l1);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, t32Var != null ? t32Var.D : null, this.a.l1);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "reuse_id", u36Var, zD, t32Var != null ? t32Var.E : null);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, t32Var != null ? t32Var.F : null, nl3Var3, h32.o);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, t32Var != null ? t32Var.G : null, this.a.l1);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "state_id_variable", zD, t32Var != null ? t32Var.H : null);
        zw2 zw2Var4 = t32Var != null ? t32Var.I : null;
        defpackage.cl4 cl4Var = this.a.p7;
        st3 st3Var = h32.p;
        st3Var.getClass();
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "states", zD, zw2Var4, cl4Var, st3Var);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, t32Var != null ? t32Var.J : null, this.a.P8);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "transform", zD, t32Var != null ? t32Var.K : null, this.a.S8);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "transition_animation_selector", h32.k, zD, t32Var != null ? t32Var.L : null, nd2.d, l66Var);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, t32Var != null ? t32Var.M : null, this.a.V1);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, t32Var != null ? t32Var.N : null, this.a.A1);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, t32Var != null ? t32Var.O : null, this.a.A1);
        zw2 zw2Var5 = t32Var != null ? t32Var.P : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var2 = h32.q;
        st3Var2.getClass();
        return new t32(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarC3, zw2VarB7, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarC4, zw2VarB12, zw2VarC5, zw2VarC6, zw2VarB13, zw2VarC7, zw2VarB14, zw2VarC8, zw2VarC9, zw2VarB15, zw2VarB16, zw2VarC10, zw2VarB17, zw2VarB18, zw2VarC11, zw2VarC12, zw2VarB19, zw2VarB20, zw2VarC13, zw2VarB21, zw2VarA, zw2VarC14, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarB26, pq3.a(tr4VarB, jSONObject, zD, zw2Var5, nl3Var4, st3Var2), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, t32Var != null ? t32Var.Q : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, t32Var != null ? t32Var.R : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", h32.l, zD, t32Var != null ? t32Var.S : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, t32Var != null ? t32Var.T : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, t32Var != null ? t32Var.U : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, t32Var != null ? t32Var.V : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
