package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class oj1 implements kv5 {
    public final tq3 a;

    public oj1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final rj1 a(ys4 ys4Var, rj1 rj1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, rj1Var != null ? rj1Var.a : null, this.a.I);
        p36 p36Var = w36.f;
        zw2 zw2Var = rj1Var != null ? rj1Var.b : null;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "active_item_color", p36Var, zD, zw2Var, nl3Var, l66Var);
        r36 r36Var = w36.d;
        zw2 zw2Var2 = rj1Var != null ? rj1Var.c : null;
        nl3 nl3Var2 = bt4.d;
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "active_item_size", r36Var, zD, zw2Var2, nl3Var2, qj1.p);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "active_shape", zD, rj1Var != null ? rj1Var.d : null, this.a.q6);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", qj1.l, zD, rj1Var != null ? rj1Var.e : null, f11.d, l66Var);
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", qj1.m, zD, rj1Var != null ? rj1Var.f : null, h11.d, l66Var);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "alpha", r36Var, zD, rj1Var != null ? rj1Var.g : null, nl3Var2, qj1.q);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION, qj1.n, zD, rj1Var != null ? rj1Var.h : null, aj1.d, l66Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, rj1Var != null ? rj1Var.i : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, rj1Var != null ? rj1Var.j : null, this.a.G1);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, "border", zD, rj1Var != null ? rj1Var.k : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var3 = rj1Var != null ? rj1Var.l : null;
        nl3 nl3Var3 = bt4.e;
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var3, nl3Var3, qj1.r);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, rj1Var != null ? rj1Var.m : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, rj1Var != null ? rj1Var.n : null, this.a.b3);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "focus", zD, rj1Var != null ? rj1Var.o : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, rj1Var != null ? rj1Var.p : null, this.a.I3);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, rj1Var != null ? rj1Var.q : null, this.a.U6);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, rj1Var != null ? rj1Var.r : null);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "inactive_item_color", p36Var, zD, rj1Var != null ? rj1Var.s : null, nl3Var, l66Var);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "inactive_minimum_shape", zD, rj1Var != null ? rj1Var.t : null, this.a.q6);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "inactive_shape", zD, rj1Var != null ? rj1Var.u : null, this.a.q6);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "items_placement", zD, rj1Var != null ? rj1Var.v : null, this.a.a4);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, rj1Var != null ? rj1Var.w : null, this.a.K4);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "margins", zD, rj1Var != null ? rj1Var.x : null, this.a.Y2);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "minimum_item_size", r36Var, zD, rj1Var != null ? rj1Var.y : null, nl3Var2, qj1.s);
        zw2 zw2VarB21 = pq3.b(tr4VarB, jSONObject, "paddings", zD, rj1Var != null ? rj1Var.z : null, this.a.Y2);
        zw2 zw2VarB22 = pq3.b(tr4VarB, jSONObject, "pager_id", zD, rj1Var != null ? rj1Var.A : null);
        zw2 zw2VarB23 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, rj1Var != null ? rj1Var.B : null);
        zw2 zw2VarB24 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, rj1Var != null ? rj1Var.C : null, nl3Var3, qj1.t);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, rj1Var != null ? rj1Var.D : null, this.a.l1);
        zw2 zw2VarB25 = pq3.b(tr4VarB, jSONObject, "shape", zD, rj1Var != null ? rj1Var.E : null, this.a.O6);
        zw2 zw2VarB26 = pq3.b(tr4VarB, jSONObject, "space_between_centers", zD, rj1Var != null ? rj1Var.F : null, this.a.w3);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, rj1Var != null ? rj1Var.G : null, this.a.P8);
        zw2 zw2VarB27 = pq3.b(tr4VarB, jSONObject, "transform", zD, rj1Var != null ? rj1Var.H : null, this.a.S8);
        zw2 zw2VarB28 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, rj1Var != null ? rj1Var.I : null, this.a.V1);
        zw2 zw2VarB29 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, rj1Var != null ? rj1Var.J : null, this.a.A1);
        zw2 zw2VarB30 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, rj1Var != null ? rj1Var.K : null, this.a.A1);
        zw2 zw2Var4 = rj1Var != null ? rj1Var.L : null;
        nl3 nl3Var4 = pd2.d;
        st3 st3Var = qj1.u;
        st3Var.getClass();
        return new rj1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarB5, zw2VarB6, zw2VarB7, zw2VarB8, zw2VarC, zw2VarC2, zw2VarB9, zw2VarB10, zw2VarC3, zw2VarC4, zw2VarB11, zw2VarC5, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, zw2VarB21, zw2VarB22, zw2VarB23, zw2VarB24, zw2VarC6, zw2VarB25, zw2VarB26, zw2VarC7, zw2VarB27, zw2VarB28, zw2VarB29, zw2VarB30, pq3.a(tr4VarB, jSONObject, zD, zw2Var4, nl3Var4, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, rj1Var != null ? rj1Var.M : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, rj1Var != null ? rj1Var.N : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", qj1.o, zD, rj1Var != null ? rj1Var.O : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, rj1Var != null ? rj1Var.P : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, rj1Var != null ? rj1Var.Q : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, rj1Var != null ? rj1Var.R : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
