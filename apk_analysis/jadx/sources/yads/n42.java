package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class n42 implements kv5 {
    public final tq3 a;

    public n42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        return new j52(pq3.a(tr4VarB, jSONObject, "color", p36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "style", zD, (zw2) null, this.a.B7), pq3.b(tr4VarB, jSONObject, "unit", p42.d, zD, null, g12.d, l66Var), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, w36.d, zD, null, bt4.d, p42.e));
    }
}
