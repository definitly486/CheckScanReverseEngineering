package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dq1 implements qv5 {
    public final tq3 a;

    public dq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        eq1 eq1Var = (eq1) xq3Var;
        as2 as2VarA = qq3.a(ys4Var, eq1Var.a, jSONObject, "image_url", w36.e, bt4.b);
        zw2 zw2Var = eq1Var.b;
        tq3 tq3Var = this.a;
        return new aq1(as2VarA, (cr0) qq3.a(ys4Var, zw2Var, jSONObject, TJAdUnitConstants.String.INSETS, tq3Var.G, tq3Var.E));
    }
}
