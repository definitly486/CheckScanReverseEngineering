package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qp1 implements ln0 {
    public final tq3 a;

    public qp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new pp1((h12) wq3.c(ys4Var, jSONObject, "max_size", this.a.Q6), (h12) wq3.c(ys4Var, jSONObject, "min_size", this.a.Q6), oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.WEIGHT, w36.d, bt4.d, tp1.a, (as2) null));
    }
}
