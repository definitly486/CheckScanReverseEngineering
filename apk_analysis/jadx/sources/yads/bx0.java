package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bx0 implements qv5 {
    public final tq3 a;

    public bx0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final yw0 a(ys4 ys4Var, lx0 lx0Var, JSONObject jSONObject) {
        as2 as2VarA = qq3.a(ys4Var, lx0Var.a, jSONObject, "container_id", w36.c);
        zw2 zw2Var = lx0Var.b;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "on_fail_actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = lx0Var.c;
        tq3 tq3Var2 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var2, jSONObject, "on_success_actions", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var3 = lx0Var.d;
        tq3 tq3Var3 = this.a;
        return new yw0(as2VarA, listC, listC2, (xw0) qq3.a(ys4Var, zw2Var3, jSONObject, "request", tq3Var3.U0, tq3Var3.S0));
    }
}
