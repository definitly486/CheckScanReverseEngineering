package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rz1 implements kv5 {
    public final tq3 a;

    public rz1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final vz1 a(ys4 ys4Var, vz1 vz1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, vz1Var != null ? vz1Var.a : null, this.a.I);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "action", zD, vz1Var != null ? vz1Var.b : null, this.a.l1);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "action_animation", zD, vz1Var != null ? vz1Var.c : null, this.a.r1);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "actions", zD, vz1Var != null ? vz1Var.d : null, this.a.l1);
        m36 m36Var = tz1.g;
        zw2 zw2Var = vz1Var != null ? vz1Var.e : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", tz1.h, zD, vz1Var != null ? vz1Var.f : null, h11.d, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, vz1Var != null ? vz1Var.g : null, bt4.d, tz1.j);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "animators", zD, vz1Var != null ? vz1Var.h : null, this.a.u1);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "background", zD, vz1Var != null ? vz1Var.i : null, this.a.G1);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "border", zD, vz1Var != null ? vz1Var.j : null, this.a.M1);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "capture_focus_on_action", w36.a, zD, vz1Var != null ? vz1Var.k : null, bt4.c, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = vz1Var != null ? vz1Var.l : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, tz1.k);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "delimiter_style", zD, vz1Var != null ? vz1Var.m : null, this.a.F6);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, vz1Var != null ? vz1Var.n : null, this.a.P2);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "doubletap_actions", zD, vz1Var != null ? vz1Var.o : null, this.a.l1);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "extensions", zD, vz1Var != null ? vz1Var.p : null, this.a.b3);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "focus", zD, vz1Var != null ? vz1Var.q : null, this.a.z3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "functions", zD, vz1Var != null ? vz1Var.r : null, this.a.I3);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, vz1Var != null ? vz1Var.s : null, this.a.U6);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "hover_end_actions", zD, vz1Var != null ? vz1Var.t : null, this.a.l1);
        zw2 zw2VarC9 = pq3.c(tr4VarB, jSONObject, "hover_start_actions", zD, vz1Var != null ? vz1Var.u : null, this.a.l1);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, vz1Var != null ? vz1Var.v : null);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, vz1Var != null ? vz1Var.w : null, this.a.K4);
        zw2 zw2VarC10 = pq3.c(tr4VarB, jSONObject, "longtap_actions", zD, vz1Var != null ? vz1Var.x : null, this.a.l1);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "margins", zD, vz1Var != null ? vz1Var.y : null, this.a.Y2);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "paddings", zD, vz1Var != null ? vz1Var.z : null, this.a.Y2);
        zw2 zw2VarC11 = pq3.c(tr4VarB, jSONObject, "press_end_actions", zD, vz1Var != null ? vz1Var.A : null, this.a.l1);
        zw2 zw2VarC12 = pq3.c(tr4VarB, jSONObject, "press_start_actions", zD, vz1Var != null ? vz1Var.B : null, this.a.l1);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, vz1Var != null ? vz1Var.C : null);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, vz1Var != null ? vz1Var.D : null, nl3Var2, tz1.l);
        zw2 zw2VarC13 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, vz1Var != null ? vz1Var.E : null, this.a.l1);
        zw2 zw2VarC14 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, vz1Var != null ? vz1Var.F : null, this.a.P8);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "transform", zD, vz1Var != null ? vz1Var.G : null, this.a.S8);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, vz1Var != null ? vz1Var.H : null, this.a.V1);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, vz1Var != null ? vz1Var.I : null, this.a.A1);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, vz1Var != null ? vz1Var.J : null, this.a.A1);
        zw2 zw2Var3 = vz1Var != null ? vz1Var.K : null;
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = tz1.m;
        st3Var.getClass();
        return new vz1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarC, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarC2, zw2VarC3, zw2VarB7, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarC4, zw2VarC5, zw2VarC6, zw2VarB11, zw2VarC7, zw2VarB12, zw2VarC8, zw2VarC9, zw2VarB13, zw2VarB14, zw2VarC10, zw2VarB15, zw2VarB16, zw2VarC11, zw2VarC12, zw2VarB17, zw2VarB18, zw2VarC13, zw2VarC14, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, pq3.a(tr4VarB, jSONObject, zD, zw2Var3, nl3Var3, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, vz1Var != null ? vz1Var.L : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, vz1Var != null ? vz1Var.M : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", tz1.i, zD, vz1Var != null ? vz1Var.N : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, vz1Var != null ? vz1Var.O : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, vz1Var != null ? vz1Var.P : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, vz1Var != null ? vz1Var.Q : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
