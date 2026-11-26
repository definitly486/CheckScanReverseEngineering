package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hc2 implements ln0 {
    public final tq3 a;

    public hc2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        vc2 vc2Var = xq3Var instanceof vc2 ? (vc2) xq3Var : null;
        if (vc2Var != null) {
            if (vc2Var instanceof uc2) {
                strA = "non_modal";
            } else {
                if (!(vc2Var instanceof tc2)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "modal";
            }
        }
        if (defpackage.aa4.e(strA, "non_modal")) {
            qc2 qc2Var = (qc2) this.a.J8.getValue();
            if (vc2Var != null) {
                if (vc2Var instanceof uc2) {
                    xq3Var2 = ((uc2) vc2Var).a;
                } else {
                    if (!(vc2Var instanceof tc2)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((tc2) vc2Var).a;
                }
            }
            qc2Var.getClass();
            return new uc2(new sc2());
        }
        if (!defpackage.aa4.e(strA, "modal")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        lc2 lc2Var = (lc2) this.a.G8.getValue();
        if (vc2Var != null) {
            if (vc2Var instanceof uc2) {
                xq3Var2 = ((uc2) vc2Var).a;
            } else {
                if (!(vc2Var instanceof tc2)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((tc2) vc2Var).a;
            }
        }
        lc2Var.getClass();
        return new tc2(new nc2());
    }
}
