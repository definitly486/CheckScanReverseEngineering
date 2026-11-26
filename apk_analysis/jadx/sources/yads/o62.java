package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o62 implements kv5 {
    public final tq3 a;

    public o62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new w62(pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, (zw2) null, this.a.w3), pq3.a(tr4VarB, jSONObject, "image_url", w36.e, zD, null, bt4.b, uq3.a), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, (zw2) null, this.a.w3));
    }
}
