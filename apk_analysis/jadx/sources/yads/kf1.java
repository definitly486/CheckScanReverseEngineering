package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kf1 implements ln0 {
    public final tq3 a;

    public kf1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new hf1(wq3.d(ys4Var, jSONObject, "background", this.a.F1), (f51) wq3.c(ys4Var, jSONObject, "border", this.a.L1), (gf1) wq3.c(ys4Var, jSONObject, "next_focus_ids", this.a.B3), wq3.d(ys4Var, jSONObject, "on_blur", this.a.k1), wq3.d(ys4Var, jSONObject, "on_focus", this.a.k1));
    }
}
