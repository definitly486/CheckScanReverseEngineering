package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gh2 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new jh2(pq3.a(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, s36Var, zD, null, nl3Var, ih2.a), pq3.a(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, s36Var, zD, null, nl3Var, ih2.b));
    }
}
