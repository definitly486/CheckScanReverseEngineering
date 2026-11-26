package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hx1 implements ln0 {
    public final tq3 a;

    public hx1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "fixed")) {
            ((bf1) this.a.v3.getValue()).getClass();
            return new ex1(bf1.b(ys4Var, jSONObject));
        }
        if (defpackage.aa4.e(strA, "relative")) {
            ((vx1) this.a.g6.getValue()).getClass();
            m36 m36Var = yx1.a;
            nl3 nl3Var = tx1.d;
            y50 y50Var = oq3.a;
            return new fx1(new ux1(oq3.a(ys4Var, jSONObject, "value", m36Var, nl3Var, uq3.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        mx1 mx1Var = xq3Var instanceof mx1 ? (mx1) xq3Var : null;
        if (mx1Var != null) {
            return ((jx1) this.a.c6.getValue()).a(ys4Var, mx1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
