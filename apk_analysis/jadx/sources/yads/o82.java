package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class o82 implements ln0 {
    public final tq3 a;

    public o82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        s82 s82Var = xq3Var instanceof s82 ? (s82) xq3Var : null;
        if (s82Var != null) {
            if (s82Var instanceof q82) {
                strA = "gradient";
            } else {
                if (!(s82Var instanceof r82)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "radial_gradient";
            }
        }
        if (defpackage.aa4.e(strA, "gradient")) {
            jp1 jp1Var = (jp1) this.a.N4.getValue();
            if (s82Var != null) {
                if (s82Var instanceof q82) {
                    xq3Var2 = ((q82) s82Var).a;
                } else {
                    if (!(s82Var instanceof r82)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((r82) s82Var).a;
                }
            }
            return new q82(jp1Var.a(ys4Var, (np1) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "radial_gradient")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        bx1 bx1Var = (bx1) this.a.k6.getValue();
        if (s82Var != null) {
            if (s82Var instanceof q82) {
                xq3Var2 = ((q82) s82Var).a;
            } else {
                if (!(s82Var instanceof r82)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((r82) s82Var).a;
            }
        }
        return new r82(bx1Var.a(ys4Var, (by1) xq3Var2, jSONObject));
    }
}
