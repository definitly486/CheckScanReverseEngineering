package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wb1 implements kv5 {
    public final tq3 a;

    public wb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return new zb1(pq3.b(zs4.b(ys4Var), jSONObject, "space_between_centers", ys4Var.d(), (zw2) null, this.a.w3));
    }
}
