package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c21 implements ln0 {
    public final tq3 a;

    public c21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        g21 g21Var = xq3Var instanceof g21 ? (g21) xq3Var : null;
        if (g21Var != null) {
            if (g21Var instanceof e21) {
                strA = "color_animator";
            } else {
                if (!(g21Var instanceof f21)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "number_animator";
            }
        }
        if (defpackage.aa4.e(strA, "color_animator")) {
            x71 x71Var = (x71) this.a.k2.getValue();
            if (g21Var != null) {
                if (g21Var instanceof e21) {
                    xq3Var2 = ((e21) g21Var).a;
                } else {
                    if (!(g21Var instanceof f21)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((f21) g21Var).a;
                }
            }
            return new e21(x71Var.a(ys4Var, (a81) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "number_animator")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        hq1 hq1Var = (hq1) this.a.c5.getValue();
        if (g21Var != null) {
            if (g21Var instanceof e21) {
                xq3Var2 = ((e21) g21Var).a;
            } else {
                if (!(g21Var instanceof f21)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((f21) g21Var).a;
            }
        }
        return new f21(hq1Var.a(ys4Var, (kq1) xq3Var2, jSONObject));
    }
}
