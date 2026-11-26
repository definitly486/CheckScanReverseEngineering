package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yq1 implements ln0 {
    public final tq3 a;

    public yq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "slide")) {
            ((ir1) this.a.n5.getValue()).getClass();
            return new wq1(ir1.b(ys4Var, jSONObject));
        }
        if (defpackage.aa4.e(strA, "overlap")) {
            ((cr1) this.a.k5.getValue()).getClass();
            return new vq1(cr1.b(ys4Var, jSONObject));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        pr1 pr1Var = xq3Var instanceof pr1 ? (pr1) xq3Var : null;
        if (pr1Var != null) {
            return ((ar1) this.a.s5.getValue()).a(ys4Var, pr1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
