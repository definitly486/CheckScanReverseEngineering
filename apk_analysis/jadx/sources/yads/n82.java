package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class n82 implements ln0 {
    public final tq3 a;

    public n82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "gradient")) {
            return new k82(((ip1) this.a.M4.getValue()).a(ys4Var, jSONObject));
        }
        if (defpackage.aa4.e(strA, "radial_gradient")) {
            return new l82(((ax1) this.a.j6.getValue()).a(ys4Var, jSONObject));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        s82 s82Var = xq3Var instanceof s82 ? (s82) xq3Var : null;
        if (s82Var != null) {
            return ((p82) this.a.X7.getValue()).a(ys4Var, s82Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
