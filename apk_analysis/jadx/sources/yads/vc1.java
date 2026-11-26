package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vc1 implements ln0 {
    public final tq3 a;

    public vc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xc1 xc1Var = xq3Var instanceof xc1 ? (xc1) xq3Var : null;
        if (xc1Var != null) {
            strA = "shape_drawable";
        }
        if (defpackage.aa4.e(strA, "shape_drawable")) {
            return new xc1(((i02) this.a.L6.getValue()).a(ys4Var, xc1Var != null ? xc1Var.a : null, jSONObject));
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
