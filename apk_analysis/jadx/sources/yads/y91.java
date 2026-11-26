package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y91 implements ln0 {
    public final tq3 a;

    public y91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "infinity")) {
            ((tj1) this.a.f4.getValue()).getClass();
            return new w91(new sj1());
        }
        if (defpackage.aa4.e(strA, "fixed")) {
            ((je1) this.a.m3.getValue()).getClass();
            return new v91(new ie1(oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e, me1.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        da1 da1Var = xq3Var instanceof da1 ? (da1) xq3Var : null;
        if (da1Var != null) {
            return ((aa1) this.a.x2.getValue()).a(ys4Var, da1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
