package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zq1 implements ln0 {
    public final tq3 a;

    public zq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        pr1 pr1Var = xq3Var instanceof pr1 ? (pr1) xq3Var : null;
        if (pr1Var != null) {
            if (pr1Var instanceof or1) {
                strA = "slide";
            } else {
                if (!(pr1Var instanceof nr1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "overlap";
            }
        }
        if (defpackage.aa4.e(strA, "slide")) {
            jr1 jr1Var = (jr1) this.a.o5.getValue();
            if (pr1Var != null) {
                if (pr1Var instanceof or1) {
                    xq3Var2 = ((or1) pr1Var).a;
                } else {
                    if (!(pr1Var instanceof nr1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((nr1) pr1Var).a;
                }
            }
            jr1Var.getClass();
            return new or1(jr1.a(ys4Var, (mr1) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "overlap")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        dr1 dr1Var = (dr1) this.a.l5.getValue();
        if (pr1Var != null) {
            if (pr1Var instanceof or1) {
                xq3Var2 = ((or1) pr1Var).a;
            } else {
                if (!(pr1Var instanceof nr1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((nr1) pr1Var).a;
            }
        }
        dr1Var.getClass();
        return new nr1(dr1.a(ys4Var, (gr1) xq3Var2, jSONObject));
    }
}
