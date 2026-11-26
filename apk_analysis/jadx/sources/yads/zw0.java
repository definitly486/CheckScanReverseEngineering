package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zw0 implements ln0 {
    public final tq3 a;

    public zw0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new yw0(oq3.a(ys4Var, jSONObject, "container_id", w36.c), wq3.d(ys4Var, jSONObject, "on_fail_actions", this.a.k1), wq3.d(ys4Var, jSONObject, "on_success_actions", this.a.k1), (xw0) wq3.a(ys4Var, jSONObject, "request", this.a.S0));
    }
}
