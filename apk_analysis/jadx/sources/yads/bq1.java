package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bq1 implements ln0 {
    public final tq3 a;

    public bq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        v36 v36Var = w36.e;
        nl3 nl3Var = bt4.b;
        y50 y50Var = oq3.a;
        return new aq1(oq3.a(ys4Var, jSONObject, "image_url", v36Var, nl3Var, uq3.a), (cr0) wq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.INSETS, this.a.E));
    }
}
