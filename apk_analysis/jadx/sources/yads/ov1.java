package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ov1 implements ln0 {
    public final tq3 a;

    public ov1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new nv1((ac1) wq3.a(ys4Var, jSONObject, "x", this.a.L2), (ac1) wq3.a(ys4Var, jSONObject, "y", this.a.L2));
    }
}
