package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qa1 implements kv5 {
    public final tq3 a;

    public qa1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final za1 a(ys4 ys4Var, za1 za1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, za1Var != null ? za1Var.a : null, this.a.I);
        m36 m36Var = sa1.e;
        zw2 zw2Var = za1Var != null ? za1Var.b : null;
        nl3 nl3Var = f11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "alignment_horizontal", m36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarB3 = pq3.b(tr4VarB, jSONObject, "alignment_vertical", sa1.f, zD, za1Var != null ? za1Var.c : null, h11.d, l66Var);
        zw2 zw2VarB4 = pq3.b(tr4VarB, jSONObject, "alpha", w36.d, zD, za1Var != null ? za1Var.d : null, bt4.d, sa1.h);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "animators", zD, za1Var != null ? za1Var.e : null, this.a.u1);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "background", zD, za1Var != null ? za1Var.f : null, this.a.G1);
        zw2 zw2VarB5 = pq3.b(tr4VarB, jSONObject, "border", zD, za1Var != null ? za1Var.g : null, this.a.M1);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = za1Var != null ? za1Var.h : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarB6 = pq3.b(tr4VarB, jSONObject, "column_span", s36Var, zD, zw2Var2, nl3Var2, sa1.i);
        zw2 zw2VarB7 = pq3.b(tr4VarB, jSONObject, "custom_props", zD, za1Var != null ? za1Var.i : null);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "custom_type", zD, za1Var != null ? za1Var.j : null);
        zw2 zw2VarC3 = pq3.c(tr4VarB, jSONObject, "disappear_actions", zD, za1Var != null ? za1Var.k : null, this.a.P2);
        zw2 zw2VarC4 = pq3.c(tr4VarB, jSONObject, "extensions", zD, za1Var != null ? za1Var.l : null, this.a.b3);
        zw2 zw2VarB8 = pq3.b(tr4VarB, jSONObject, "focus", zD, za1Var != null ? za1Var.m : null, this.a.z3);
        zw2 zw2VarC5 = pq3.c(tr4VarB, jSONObject, "functions", zD, za1Var != null ? za1Var.n : null, this.a.I3);
        zw2 zw2VarB9 = pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, za1Var != null ? za1Var.o : null, this.a.U6);
        zw2 zw2VarB10 = pq3.b(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, za1Var != null ? za1Var.p : null);
        zw2 zw2VarC6 = pq3.c(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, za1Var != null ? za1Var.q : null, this.a.t9);
        zw2 zw2VarB11 = pq3.b(tr4VarB, jSONObject, "layout_provider", zD, za1Var != null ? za1Var.r : null, this.a.K4);
        zw2 zw2VarB12 = pq3.b(tr4VarB, jSONObject, "margins", zD, za1Var != null ? za1Var.s : null, this.a.Y2);
        zw2 zw2VarB13 = pq3.b(tr4VarB, jSONObject, "paddings", zD, za1Var != null ? za1Var.t : null, this.a.Y2);
        zw2 zw2VarB14 = pq3.b(tr4VarB, jSONObject, "reuse_id", w36.c, zD, za1Var != null ? za1Var.u : null);
        zw2 zw2VarB15 = pq3.b(tr4VarB, jSONObject, "row_span", s36Var, zD, za1Var != null ? za1Var.v : null, nl3Var2, sa1.j);
        zw2 zw2VarC7 = pq3.c(tr4VarB, jSONObject, "selected_actions", zD, za1Var != null ? za1Var.w : null, this.a.l1);
        zw2 zw2VarC8 = pq3.c(tr4VarB, jSONObject, "tooltips", zD, za1Var != null ? za1Var.x : null, this.a.P8);
        zw2 zw2VarB16 = pq3.b(tr4VarB, jSONObject, "transform", zD, za1Var != null ? za1Var.y : null, this.a.S8);
        zw2 zw2VarB17 = pq3.b(tr4VarB, jSONObject, "transition_change", zD, za1Var != null ? za1Var.z : null, this.a.V1);
        zw2 zw2VarB18 = pq3.b(tr4VarB, jSONObject, "transition_in", zD, za1Var != null ? za1Var.A : null, this.a.A1);
        zw2 zw2VarB19 = pq3.b(tr4VarB, jSONObject, "transition_out", zD, za1Var != null ? za1Var.B : null, this.a.A1);
        zw2 zw2Var3 = za1Var != null ? za1Var.C : null;
        nl3 nl3Var3 = pd2.d;
        st3 st3Var = sa1.k;
        st3Var.getClass();
        return new za1(zw2VarB, zw2VarB2, zw2VarB3, zw2VarB4, zw2VarC, zw2VarC2, zw2VarB5, zw2VarB6, zw2VarB7, zw2VarA, zw2VarC3, zw2VarC4, zw2VarB8, zw2VarC5, zw2VarB9, zw2VarB10, zw2VarC6, zw2VarB11, zw2VarB12, zw2VarB13, zw2VarB14, zw2VarB15, zw2VarC7, zw2VarC8, zw2VarB16, zw2VarB17, zw2VarB18, zw2VarB19, pq3.a(tr4VarB, jSONObject, zD, zw2Var3, nl3Var3, st3Var), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, za1Var != null ? za1Var.D : null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, za1Var != null ? za1Var.E : null, this.a.b9), pq3.b(tr4VarB, jSONObject, "visibility", sa1.g, zD, za1Var != null ? za1Var.F : null, ri2.d, l66Var), pq3.b(tr4VarB, jSONObject, "visibility_action", zD, za1Var != null ? za1Var.G : null, this.a.n9), pq3.c(tr4VarB, jSONObject, "visibility_actions", zD, za1Var != null ? za1Var.H : null, this.a.n9), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, za1Var != null ? za1Var.I : null, this.a.U6));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
