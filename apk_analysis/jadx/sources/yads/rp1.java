package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rp1 implements kv5 {
    public final tq3 a;

    public rp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final up1 a(ys4 ys4Var, up1 up1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new up1(pq3.b(tr4VarB, jSONObject, "max_size", zD, up1Var != null ? up1Var.a : null, this.a.R6), pq3.b(tr4VarB, jSONObject, "min_size", zD, up1Var != null ? up1Var.b : null, this.a.R6), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WEIGHT, w36.d, zD, up1Var != null ? up1Var.c : null, bt4.d, tp1.a));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
