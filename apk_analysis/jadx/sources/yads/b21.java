package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b21 implements ln0 {
    public final tq3 a;

    public b21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "color_animator")) {
            return new u11(((w71) this.a.j2.getValue()).a(ys4Var, jSONObject));
        }
        if (defpackage.aa4.e(strA, "number_animator")) {
            return new v11(((gq1) this.a.b5.getValue()).a(ys4Var, jSONObject));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        g21 g21Var = xq3Var instanceof g21 ? (g21) xq3Var : null;
        if (g21Var != null) {
            return ((d21) this.a.v1.getValue()).a(ys4Var, g21Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
