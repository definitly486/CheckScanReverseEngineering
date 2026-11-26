package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vu0 implements ln0 {
    public final tq3 a;

    public vu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new ur0((xr0) wq3.c(ys4Var, jSONObject, "action", this.a.k1), wq3.d(ys4Var, jSONObject, "actions", this.a.k1), oq3.a(ys4Var, jSONObject, "text", w36.c));
    }
}
