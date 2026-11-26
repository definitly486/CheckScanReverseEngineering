package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h82 implements ln0 {
    public final tq3 a;

    public h82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new r72(wq3.d(ys4Var, jSONObject, "actions", this.a.k1), wq3.d(ys4Var, jSONObject, "images", this.a.t8), wq3.d(ys4Var, jSONObject, "ranges", this.a.q8), oq3.a(ys4Var, jSONObject, "text", w36.c));
    }
}
