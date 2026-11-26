package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nz1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        return new uz1(pq3.b(tr4VarB, jSONObject, "color", p36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.ORIENTATION, pz1.c, zD, null, iz1.d, l66Var));
    }
}
