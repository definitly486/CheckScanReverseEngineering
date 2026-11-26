package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xd1 implements ln0 {
    public final tq3 a;

    public xd1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "blur")) {
            ((a51) this.a.I1.getValue()).getClass();
            return new ud1(new z41(oq3.a(ys4Var, jSONObject, "radius", w36.b, bt4.e, d51.a)));
        }
        if (defpackage.aa4.e(strA, "rtl_mirror")) {
            ((be1) this.a.g3.getValue()).getClass();
            return new vd1(new ae1());
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        he1 he1Var = xq3Var instanceof he1 ? (he1) xq3Var : null;
        if (he1Var != null) {
            return ((zd1) this.a.l3.getValue()).a(ys4Var, he1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
