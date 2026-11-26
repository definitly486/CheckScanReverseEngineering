package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z91 implements ln0 {
    public final tq3 a;

    public z91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        xq3 xq3Var;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var2 = ys4Var.b().get(strA);
        Object obj = null;
        da1 da1Var = xq3Var2 instanceof da1 ? (da1) xq3Var2 : null;
        if (da1Var != null) {
            if (da1Var instanceof ca1) {
                strA = "infinity";
            } else {
                if (!(da1Var instanceof ba1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "fixed";
            }
        }
        if (defpackage.aa4.e(strA, "infinity")) {
            uj1 uj1Var = (uj1) this.a.g4.getValue();
            if (da1Var != null) {
                if (da1Var instanceof ca1) {
                    obj = ((ca1) da1Var).a;
                } else {
                    if (!(da1Var instanceof ba1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    obj = ((ba1) da1Var).a;
                }
            }
            uj1Var.getClass();
            return new ca1(new wj1());
        }
        if (!defpackage.aa4.e(strA, "fixed")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        ke1 ke1Var = (ke1) this.a.n3.getValue();
        if (da1Var == null) {
            xq3Var = null;
        } else if (da1Var instanceof ca1) {
            xq3Var = ((ca1) da1Var).a;
        } else {
            if (!(da1Var instanceof ba1)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((ba1) da1Var).a;
        }
        ne1 ne1Var = (ne1) xq3Var;
        ke1Var.getClass();
        return new ba1(new ne1(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.b, ys4Var.d(), ne1Var != null ? ne1Var.a : null, bt4.e, me1.a)));
    }
}
