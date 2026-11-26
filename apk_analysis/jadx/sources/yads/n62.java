package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class n62 implements ln0 {
    public final tq3 a;

    public n62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.v3);
        if (af1Var == null) {
            af1Var = q62.a;
        }
        v36 v36Var = w36.e;
        nl3 nl3Var = bt4.b;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "image_url", v36Var, nl3Var, uq3.a);
        af1 af1Var2 = (af1) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.v3);
        if (af1Var2 == null) {
            af1Var2 = q62.b;
        }
        return new u52(af1Var, as2VarA, af1Var2);
    }
}
