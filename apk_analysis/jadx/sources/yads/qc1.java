package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qc1 implements qv5 {
    public final tq3 a;

    public qc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        rc1 rc1Var = (rc1) xq3Var;
        zw2 zw2Var = rc1Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "on_fail_actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = rc1Var.b;
        tq3 tq3Var2 = this.a;
        return new nc1(listC, qq3.c(ys4Var, zw2Var2, jSONObject, "on_success_actions", tq3Var2.m1, tq3Var2.k1));
    }
}
