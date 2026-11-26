package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xu0 implements qv5 {
    public final tq3 a;

    public xu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        mx0 mx0Var = (mx0) xq3Var;
        zw2 zw2Var = mx0Var.a;
        tq3 tq3Var = this.a;
        xr0 xr0Var = (xr0) qq3.b(ys4Var, zw2Var, jSONObject, "action", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = mx0Var.b;
        tq3 tq3Var2 = this.a;
        return new ur0(xr0Var, qq3.c(ys4Var, zw2Var2, jSONObject, "actions", tq3Var2.m1, tq3Var2.k1), qq3.a(ys4Var, mx0Var.c, jSONObject, "text", w36.c));
    }
}
