package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sp1 implements qv5 {
    public final tq3 a;

    public sp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final pp1 a(ys4 ys4Var, up1 up1Var, JSONObject jSONObject) {
        zw2 zw2Var = up1Var.a;
        tq3 tq3Var = this.a;
        h12 h12Var = (h12) qq3.b(ys4Var, zw2Var, jSONObject, "max_size", tq3Var.S6, tq3Var.Q6);
        zw2 zw2Var2 = up1Var.b;
        tq3 tq3Var2 = this.a;
        return new pp1(h12Var, (h12) qq3.b(ys4Var, zw2Var2, jSONObject, "min_size", tq3Var2.S6, tq3Var2.Q6), qq3.b(ys4Var, up1Var.c, jSONObject, TJAdUnitConstants.String.WEIGHT, w36.d, bt4.d, tp1.a));
    }
}
