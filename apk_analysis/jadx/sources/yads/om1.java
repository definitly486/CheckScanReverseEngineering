package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class om1 implements ln0 {
    public final tq3 a;

    public om1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        ym1 ym1Var = xq3Var instanceof ym1 ? (ym1) xq3Var : null;
        if (ym1Var != null) {
            if (ym1Var instanceof xm1) {
                strA = "regex";
            } else {
                if (!(ym1Var instanceof wm1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "expression";
            }
        }
        if (defpackage.aa4.e(strA, "regex")) {
            sm1 sm1Var = (sm1) this.a.y4.getValue();
            if (ym1Var != null) {
                if (ym1Var instanceof xm1) {
                    xq3Var2 = ((xm1) ym1Var).a;
                } else {
                    if (!(ym1Var instanceof wm1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((wm1) ym1Var).a;
                }
            }
            sm1Var.getClass();
            return new xm1(sm1.a(ys4Var, (vm1) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "expression")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        jm1 jm1Var = (jm1) this.a.v4.getValue();
        if (ym1Var != null) {
            if (ym1Var instanceof xm1) {
                xq3Var2 = ((xm1) ym1Var).a;
            } else {
                if (!(ym1Var instanceof wm1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((wm1) ym1Var).a;
            }
        }
        jm1Var.getClass();
        return new wm1(jm1.a(ys4Var, (mm1) xq3Var2, jSONObject));
    }
}
