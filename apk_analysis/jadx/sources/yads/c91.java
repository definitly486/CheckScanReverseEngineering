package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c91 implements kv5 {
    public final tq3 a;

    public c91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final k91 a(ys4 ys4Var, k91 k91Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, k91Var != null ? k91Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, k91Var != null ? k91Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, k91Var != null ? k91Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, k91Var != null ? k91Var.d : null, this.a.l1);
        m36 m36Var = e91.n;
        zw2 zw2Var = k91Var != null ? k91Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", e91.o, zD, k91Var != null ? k91Var.f : null, h11.d, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, k91Var != null ? k91Var.g : null, bt4.d, e91.u);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, k91Var != null ? k91Var.h : null, this.a.u1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "aspect", zD, k91Var != null ? k91Var.i : null, this.a.D1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, k91Var != null ? k91Var.j : null, this.a.G1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "border", zD, k91Var != null ? k91Var.k : null, this.a.M1);
        o36 o36Var = w36.a;
        zw2 zw2Var2 = k91Var != null ? k91Var.l : null;
        nl3 nl3Var2 = bt4.c;
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", o36Var, zD, zw2Var2, nl3Var2, l66Var);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "clip_to_bounds", o36Var, zD, k91Var != null ? k91Var.m : null, nl3Var2, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = k91Var != null ? k91Var.n : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var3, nl3Var3, e91.v);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "content_alignment_horizontal", e91.p, zD, k91Var != null ? k91Var.o : null, m91.d, l66Var);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "content_alignment_vertical", e91.q, zD, k91Var != null ? k91Var.p : null, o91.d, l66Var);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, k91Var != null ? k91Var.q : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, k91Var != null ? k91Var.r : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, k91Var != null ? k91Var.s : null, this.a.b3);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "focus", zD, k91Var != null ? k91Var.t : null, this.a.z3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, k91Var != null ? k91Var.u : null, this.a.I3);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, k91Var != null ? k91Var.v : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, k91Var != null ? k91Var.w : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, k91Var != null ? k91Var.x : null, this.a.l1);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, k91Var != null ? k91Var.y : null);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "item_builder", zD, k91Var != null ? k91Var.z : null, this.a.e2);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "item_spacing", s36Var, zD, k91Var != null ? k91Var.A : null, nl3Var3, e91.w);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, k91Var != null ? k91Var.B : null, this.a.t9);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "layout_mode", e91.r, zD, k91Var != null ? k91Var.C : null, f81.d, l66Var);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, k91Var != null ? k91Var.D : null, this.a.K4);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "line_separator", zD, k91Var != null ? k91Var.E : null, this.a.q2);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "line_spacing", s36Var, zD, k91Var != null ? k91Var.F : null, nl3Var3, e91.x);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, k91Var != null ? k91Var.G : null, this.a.l1);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "margins", zD, k91Var != null ? k91Var.H : null, this.a.Y2);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.ORIENTATION, e91.s, zD, k91Var != null ? k91Var.I : null, h81.d, l66Var);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "paddings", zD, k91Var != null ? k91Var.J : null, this.a.Y2);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, k91Var != null ? k91Var.K : null, this.a.l1);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, k91Var != null ? k91Var.L : null, this.a.l1);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, k91Var != null ? k91Var.M : null);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, k91Var != null ? k91Var.N : null, nl3Var3, e91.y);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, k91Var != null ? k91Var.O : null, this.a.l1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "separator", zD, k91Var != null ? k91Var.P : null, this.a.q2);
        zw2 zw2VarC15 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, k91Var != null ? k91Var.Q : null, this.a.P8);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "transform", zD, k91Var != null ? k91Var.R : null, this.a.S8);
        zw2 zw2VarB30 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, k91Var != null ? k91Var.S : null, this.a.V1);
        zw2 zw2VarB31 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, k91Var != null ? k91Var.T : null, this.a.A1);
        zw2 zw2VarB32 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, k91Var != null ? k91Var.U : null, this.a.A1);
        zw2 zw2Var4 = k91Var != null ? k91Var.V : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var = e91.z;
        st3Var.getClass();
        return new k91(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarB7, zw2VarC3, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarC4, zw2VarC5, zw2VarC6, zw2VarB14, zw2VarC7, zw2VarB15, zw2VarC8, zw2VarC9, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarC10, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarC11, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarC12, zw2VarC13, zw2VarB26, zw2VarB27, zw2VarC14, zw2VarB28, zw2VarC15, zw2VarB29, zw2VarB30, zw2VarB31, zw2VarB32, pq3.a(tr4VarB, jSONObject, zD, zw2Var4, nl3Var4, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, k91Var != null ? k91Var.W : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, k91Var != null ? k91Var.X : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", e91.t, zD, k91Var != null ? k91Var.Y : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, k91Var != null ? k91Var.Z : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, k91Var != null ? k91Var.a0 : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, k91Var != null ? k91Var.b0 : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
