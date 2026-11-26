package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tk1 implements ln0 {
    public final tq3 a;

    public tk1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        xq3 xq3Var;
        xq3 xq3Var2;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var3 = ys4Var.b().get(strA);
        cl1 cl1Var = xq3Var3 instanceof cl1 ? (cl1) xq3Var3 : null;
        if (cl1Var != null) {
            if (cl1Var instanceof bl1) {
                strA = "regex";
            } else {
                if (!(cl1Var instanceof al1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "expression";
            }
        }
        if (defpackage.aa4.e(strA, "regex")) {
            xk1 xk1Var = (xk1) this.a.m4.getValue();
            if (cl1Var == null) {
                xq3Var2 = null;
            } else if (cl1Var instanceof bl1) {
                xq3Var2 = ((bl1) cl1Var).a;
            } else {
                if (!(cl1Var instanceof al1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((al1) cl1Var).a;
            }
            zk1 zk1Var = (zk1) xq3Var2;
            xk1Var.getClass();
            return new bl1(new zk1(pq3.a(zs4.b(ys4Var), jSONObject, "pattern", w36.c, ys4Var.d(), zk1Var != null ? zk1Var.a : null)));
        }
        if (!defpackage.aa4.e(strA, "expression")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        pk1 pk1Var = (pk1) this.a.j4.getValue();
        if (cl1Var == null) {
            xq3Var = null;
        } else if (cl1Var instanceof bl1) {
            xq3Var = ((bl1) cl1Var).a;
        } else {
            if (!(cl1Var instanceof al1)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((al1) cl1Var).a;
        }
        rk1 rk1Var = (rk1) xq3Var;
        pk1Var.getClass();
        return new al1(new rk1(pq3.a(zs4.b(ys4Var), jSONObject, "condition", w36.a, ys4Var.d(), rk1Var != null ? rk1Var.a : null, bt4.c, uq3.a)));
    }
}
