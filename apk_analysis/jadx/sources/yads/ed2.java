package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ed2 implements qv5 {
    public final tq3 a;

    public ed2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        gd2 gd2Var = (gd2) xq3Var;
        zw2 zw2Var = gd2Var.a;
        tq3 tq3Var = this.a;
        ru1 ru1Var = (ru1) qq3.b(ys4Var, zw2Var, jSONObject, "pivot_x", tq3Var.Q5, tq3Var.O5);
        if (ru1Var == null) {
            ru1Var = fd2.a;
        }
        zw2 zw2Var2 = gd2Var.b;
        tq3 tq3Var2 = this.a;
        ru1 ru1Var2 = (ru1) qq3.b(ys4Var, zw2Var2, jSONObject, "pivot_y", tq3Var2.Q5, tq3Var2.O5);
        if (ru1Var2 == null) {
            ru1Var2 = fd2.b;
        }
        return new bd2(ru1Var, ru1Var2, qq3.b(ys4Var, gd2Var.c, jSONObject, "rotation", w36.d, bt4.d));
    }
}
