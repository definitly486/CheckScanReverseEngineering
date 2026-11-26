package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nw0 implements qv5 {
    public final tq3 a;

    public nw0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ow0 ow0Var = (ow0) xq3Var;
        zw2 zw2Var = ow0Var.a;
        tq3 tq3Var = this.a;
        return new kw0((oe2) qq3.a(ys4Var, zw2Var, jSONObject, "value", tq3Var.Z8, tq3Var.X8), qq3.a(ys4Var, ow0Var.b, jSONObject, "variable_name", w36.c));
    }
}
