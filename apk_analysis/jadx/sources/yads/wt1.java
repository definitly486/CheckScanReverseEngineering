package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wt1 implements kv5 {
    public final tq3 a;

    public wt1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        defpackage.cl4 cl4Var = this.a.A5;
        st3 st3Var = yt1.c;
        st3Var.getClass();
        return new bu1(pq3.a(tr4VarB, jSONObject, "changes", zD, (zw2) null, cl4Var, st3Var), pq3.b(tr4VarB, jSONObject, "mode", yt1.b, zD, null, pt1.d, uq3.a), pq3.c(tr4VarB, jSONObject, "on_applied_actions", zD, null, this.a.l1), pq3.c(tr4VarB, jSONObject, "on_failed_actions", zD, null, this.a.l1));
    }
}
