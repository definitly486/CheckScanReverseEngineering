package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o52 implements kv5 {
    public final tq3 a;

    public o52(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final r52 a(ys4 ys4Var, r52 r52Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, r52Var != null ? r52Var.a : null, this.a.I);
        m36 m36Var = q52.f;
        zw2 zw2Var = r52Var != null ? r52Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", q52.g, zD, r52Var != null ? r52Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, r52Var != null ? r52Var.d : null, bt4.d, q52.i);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, r52Var != null ? r52Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, r52Var != null ? r52Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, r52Var != null ? r52Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = r52Var != null ? r52Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, q52.j);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, r52Var != null ? r52Var.i : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, r52Var != null ? r52Var.j : null, this.a.b3);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "focus", zD, r52Var != null ? r52Var.k : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, r52Var != null ? r52Var.l : null, this.a.I3);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, r52Var != null ? r52Var.m : null, this.a.U6);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, r52Var != null ? r52Var.n : null);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, "is_enabled", w36.a, zD, r52Var != null ? r52Var.o : null, bt4.c, l66Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "is_on_variable", zD, r52Var != null ? r52Var.p : null);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, r52Var != null ? r52Var.q : null, this.a.K4);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "margins", zD, r52Var != null ? r52Var.r : null, this.a.Y2);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "on_color", w36.f, zD, r52Var != null ? r52Var.s : null, bt4.a, l66Var);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "paddings", zD, r52Var != null ? r52Var.t : null, this.a.Y2);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, r52Var != null ? r52Var.u : null);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, r52Var != null ? r52Var.v : null, nl3Var2, q52.k);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, r52Var != null ? r52Var.w : null, this.a.l1);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, r52Var != null ? r52Var.x : null, this.a.P8);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "transform", zD, r52Var != null ? r52Var.y : null, this.a.S8);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, r52Var != null ? r52Var.z : null, this.a.V1);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, r52Var != null ? r52Var.A : null, this.a.A1);
        zw2 zw2VarB20 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, r52Var != null ? r52Var.B : null, this.a.A1);
        zw2 zw2Var3 = r52Var != null ? r52Var.C : null;
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = q52.l;
        st3Var.getClass();
        return new r52(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarC3, zw2VarC4, zw2VarB7, zw2VarC5, zw2VarB8, zw2VarB9, zw2VarB10, zw2VarA, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarB16, zw2VarC6, zw2VarC7, zw2VarB17, zw2VarB18, zw2VarB19, zw2VarB20, pq3.a(tr4VarB, jSONObject, zD, zw2Var3, nl3Var3, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, r52Var != null ? r52Var.D : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, r52Var != null ? r52Var.E : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", q52.h, zD, r52Var != null ? r52Var.F : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, r52Var != null ? r52Var.G : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, r52Var != null ? r52Var.H : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, r52Var != null ? r52Var.I : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
