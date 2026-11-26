package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class oc1 implements ln0 {
    public final tq3 a;

    public oc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new nc1(wq3.d(ys4Var, jSONObject, "on_fail_actions", this.a.k1), wq3.d(ys4Var, jSONObject, "on_success_actions", this.a.k1));
    }
}
