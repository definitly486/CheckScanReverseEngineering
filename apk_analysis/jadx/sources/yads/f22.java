package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f22 implements kv5 {
    public final tq3 a;

    public f22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final n22 a(ys4 ys4Var, n22 n22Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, n22Var != null ? n22Var.a : null, this.a.I);
        m36 m36Var = h22.h;
        zw2 zw2Var = n22Var != null ? n22Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", h22.i, zD, n22Var != null ? n22Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, n22Var != null ? n22Var.d : null, bt4.d, h22.k);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, n22Var != null ? n22Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, n22Var != null ? n22Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, n22Var != null ? n22Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = n22Var != null ? n22Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, h22.l);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, n22Var != null ? n22Var.i : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, n22Var != null ? n22Var.j : null, this.a.b3);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "focus", zD, n22Var != null ? n22Var.k : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, n22Var != null ? n22Var.l : null, this.a.I3);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, n22Var != null ? n22Var.m : null, this.a.U6);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, n22Var != null ? n22Var.n : null);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "is_enabled", w36.a, zD, n22Var != null ? n22Var.o : null, bt4.c, l66Var);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, n22Var != null ? n22Var.p : null, this.a.K4);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "margins", zD, n22Var != null ? n22Var.q : null, this.a.Y2);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "max_value", s36Var, zD, n22Var != null ? n22Var.r : null, nl3Var2, l66Var);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "min_value", s36Var, zD, n22Var != null ? n22Var.s : null, nl3Var2, l66Var);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "paddings", zD, n22Var != null ? n22Var.t : null, this.a.Y2);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "ranges", zD, n22Var != null ? n22Var.u : null, this.a.g7);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, n22Var != null ? n22Var.v : null);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, n22Var != null ? n22Var.w : null, nl3Var2, h22.m);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "secondary_value_accessibility", zD, n22Var != null ? n22Var.x : null, this.a.I);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, n22Var != null ? n22Var.y : null, this.a.l1);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "thumb_secondary_style", zD, n22Var != null ? n22Var.z : null, this.a.V2);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "thumb_secondary_text_style", zD, n22Var != null ? n22Var.A : null, this.a.d7);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "thumb_secondary_value_variable", zD, n22Var != null ? n22Var.B : null);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "thumb_style", zD, n22Var != null ? n22Var.C : null, this.a.V2);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "thumb_text_style", zD, n22Var != null ? n22Var.D : null, this.a.d7);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "thumb_value_variable", zD, n22Var != null ? n22Var.E : null);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "tick_mark_active_style", zD, n22Var != null ? n22Var.F : null, this.a.V2);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "tick_mark_inactive_style", zD, n22Var != null ? n22Var.G : null, this.a.V2);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, n22Var != null ? n22Var.H : null, this.a.P8);
        zw2 zw2VarA2 = pq3.a(tr4VarB, jSONObject, "track_active_style", zD, n22Var != null ? n22Var.I : null, this.a.V2);
        zw2 zw2VarA3 = pq3.a(tr4VarB, jSONObject, "track_inactive_style", zD, n22Var != null ? n22Var.J : null, this.a.V2);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "transform", zD, n22Var != null ? n22Var.K : null, this.a.S8);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, n22Var != null ? n22Var.L : null, this.a.V1);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, n22Var != null ? n22Var.M : null, this.a.A1);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, n22Var != null ? n22Var.N : null, this.a.A1);
        zw2 zw2Var3 = n22Var != null ? n22Var.O : null;
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = h22.n;
        st3Var.getClass();
        return new n22(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarC3, zw2VarC4, zw2VarB7, zw2VarC5, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarC6, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarC7, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarA, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarB25, zw2VarC8, zw2VarA2, zw2VarA3, zw2VarB26, zw2VarB27, zw2VarB28, zw2VarB29, pq3.a(tr4VarB, jSONObject, zD, zw2Var3, nl3Var3, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, n22Var != null ? n22Var.P : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, n22Var != null ? n22Var.Q : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", h22.j, zD, n22Var != null ? n22Var.R : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, n22Var != null ? n22Var.S : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, n22Var != null ? n22Var.T : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, n22Var != null ? n22Var.U : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
