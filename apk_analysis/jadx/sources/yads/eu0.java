package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class eu0 implements qv5 {
    public final tq3 a;

    public eu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        fu0 fu0Var = (fu0) xq3Var;
        zw2 zw2Var = fu0Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "on_fail_actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = fu0Var.b;
        tq3 tq3Var2 = this.a;
        return new bu0(listC, qq3.c(ys4Var, zw2Var2, jSONObject, "on_success_actions", tq3Var2.m1, tq3Var2.k1), qq3.a(ys4Var, fu0Var.c, jSONObject, "url", w36.e, bt4.b));
    }
}
