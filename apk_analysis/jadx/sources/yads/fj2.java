package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fj2 implements ln0 {
    public final tq3 a;

    public fj2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new ej2((h12) wq3.c(ys4Var, jSONObject, "max_size", this.a.Q6), (h12) wq3.c(ys4Var, jSONObject, "min_size", this.a.Q6), oq3.a(ys4Var, jSONObject, "constrained", w36.a, bt4.c));
    }
}
