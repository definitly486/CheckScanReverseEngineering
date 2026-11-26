package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ia2 implements ln0 {
    public final tq3 a;

    public ia2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        ya2 ya2Var = xq3Var instanceof ya2 ? (ya2) xq3Var : null;
        if (ya2Var != null) {
            if (ya2Var instanceof wa2) {
                strA = "particles";
            } else {
                if (!(ya2Var instanceof xa2)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "solid";
            }
        }
        if (defpackage.aa4.e(strA, "particles")) {
            ma2 ma2Var = (ma2) this.a.f8.getValue();
            if (ya2Var != null) {
                if (ya2Var instanceof wa2) {
                    xq3Var2 = ((wa2) ya2Var).a;
                } else {
                    if (!(ya2Var instanceof xa2)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((xa2) ya2Var).a;
                }
            }
            return new wa2(ma2Var.a(ys4Var, (pa2) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "solid")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        sa2 sa2Var = (sa2) this.a.i8.getValue();
        if (ya2Var != null) {
            if (ya2Var instanceof wa2) {
                xq3Var2 = ((wa2) ya2Var).a;
            } else {
                if (!(ya2Var instanceof xa2)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((xa2) ya2Var).a;
            }
        }
        sa2Var.getClass();
        return new xa2(sa2.a(ys4Var, (va2) xq3Var2, jSONObject));
    }
}
