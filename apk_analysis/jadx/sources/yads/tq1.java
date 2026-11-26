package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tq1 implements qv5 {
    public final tq3 a;

    public tq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((uq1) xq3Var).a;
        tq3 tq3Var = this.a;
        return new qq1((eu1) qq3.a(ys4Var, zw2Var, jSONObject, "page_width", tq3Var.E5, tq3Var.C5));
    }
}
