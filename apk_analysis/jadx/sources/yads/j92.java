package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j92 implements ln0 {
    public final tq3 a;

    public j92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        n92 n92Var = xq3Var instanceof n92 ? (n92) xq3Var : null;
        if (n92Var != null) {
            if (n92Var instanceof m92) {
                strA = "solid";
            } else {
                if (!(n92Var instanceof l92)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "cloud";
            }
        }
        if (defpackage.aa4.e(strA, "solid")) {
            v22 v22Var = (v22) this.a.j7.getValue();
            if (n92Var != null) {
                if (n92Var instanceof m92) {
                    xq3Var2 = ((m92) n92Var).a;
                } else {
                    if (!(n92Var instanceof l92)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((l92) n92Var).a;
                }
            }
            v22Var.getClass();
            return new m92(v22.a(ys4Var, (x22) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "cloud")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        y61 y61Var = (y61) this.a.b2.getValue();
        if (n92Var != null) {
            if (n92Var instanceof m92) {
                xq3Var2 = ((m92) n92Var).a;
            } else {
                if (!(n92Var instanceof l92)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((l92) n92Var).a;
            }
        }
        return new l92(y61Var.a(ys4Var, (b71) xq3Var2, jSONObject));
    }
}
