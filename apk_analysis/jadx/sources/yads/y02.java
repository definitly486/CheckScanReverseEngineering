package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y02 implements ln0 {
    public final tq3 a;

    public y02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        int iHashCode = strA.hashCode();
        if (iHashCode != 97445748) {
            if (iHashCode != 343327108) {
                if (iHashCode == 1386124388 && strA.equals("match_parent")) {
                    qp1 qp1Var = (qp1) this.a.S4.getValue();
                    return new v02(new pp1((h12) wq3.c(ys4Var, jSONObject, "max_size", qp1Var.a.Q6), (h12) wq3.c(ys4Var, jSONObject, "min_size", qp1Var.a.Q6), oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.WEIGHT, w36.d, bt4.d, tp1.a, (as2) null)));
                }
            } else if (strA.equals("wrap_content")) {
                fj2 fj2Var = (fj2) this.a.p9.getValue();
                fj2Var.getClass();
                return new w02(new ej2((h12) wq3.c(ys4Var, jSONObject, "max_size", fj2Var.a.Q6), (h12) wq3.c(ys4Var, jSONObject, "min_size", fj2Var.a.Q6), oq3.a(ys4Var, jSONObject, "constrained", w36.a, bt4.c)));
            }
        } else if (strA.equals("fixed")) {
            ((bf1) this.a.v3.getValue()).getClass();
            return new u02(bf1.b(ys4Var, jSONObject));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        e12 e12Var = xq3Var instanceof e12 ? (e12) xq3Var : null;
        if (e12Var != null) {
            return ((a12) this.a.V6.getValue()).a(ys4Var, e12Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
