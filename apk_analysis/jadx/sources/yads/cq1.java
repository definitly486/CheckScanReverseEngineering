package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cq1 implements kv5 {
    public final tq3 a;

    public cq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final eq1 a(ys4 ys4Var, eq1 eq1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new eq1(pq3.a(tr4VarB, jSONObject, "image_url", w36.e, zD, eq1Var != null ? eq1Var.a : null, bt4.b, uq3.a), pq3.a(tr4VarB, jSONObject, TJAdUnitConstants.String.INSETS, zD, eq1Var != null ? eq1Var.b : null, this.a.F));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
