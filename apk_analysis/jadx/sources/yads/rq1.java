package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rq1 implements ln0 {
    public final tq3 a;

    public rq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new qq1((eu1) wq3.a(ys4Var, jSONObject, "page_width", this.a.C5));
    }
}
