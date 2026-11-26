package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jb1 implements kv5 {
    public final tq3 a;

    public jb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "functions", zD, null, this.a.I3);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "log_id", zD, null);
        defpackage.cl4 cl4Var = this.a.G2;
        st3 st3Var = lb1.c;
        st3Var.getClass();
        return new tb1(zw2VarC, zw2VarA, pq3.a(tr4VarB, jSONObject, "states", zD, (zw2) null, cl4Var, st3Var), pq3.c(tr4VarB, jSONObject, "timers", zD, null, this.a.D8), pq3.b(tr4VarB, jSONObject, "transition_animation_selector", lb1.b, zD, null, nd2.d, uq3.a), pq3.c(tr4VarB, jSONObject, "variable_triggers", zD, null, this.a.V8), pq3.c(tr4VarB, jSONObject, "variables", zD, null, this.a.b9));
    }
}
