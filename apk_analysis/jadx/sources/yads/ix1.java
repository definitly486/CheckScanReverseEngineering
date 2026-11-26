package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ix1 implements ln0 {
    public final tq3 a;

    public ix1(tq3 tq3Var) {
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
        mx1 mx1Var = xq3Var2 instanceof mx1 ? (mx1) xq3Var2 : null;
        if (mx1Var != null) {
            if (mx1Var instanceof kx1) {
                strA = "fixed";
            } else {
                if (!(mx1Var instanceof lx1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "relative";
            }
        }
        if (defpackage.aa4.e(strA, "fixed")) {
            cf1 cf1Var = (cf1) this.a.w3.getValue();
            if (mx1Var != null) {
                if (mx1Var instanceof kx1) {
                    obj = ((kx1) mx1Var).a;
                } else {
                    if (!(mx1Var instanceof lx1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    obj = ((lx1) mx1Var).a;
                }
            }
            cf1Var.getClass();
            return new kx1(cf1.a(ys4Var, (ff1) obj, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "relative")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        wx1 wx1Var = (wx1) this.a.h6.getValue();
        if (mx1Var == null) {
            xq3Var = null;
        } else if (mx1Var instanceof kx1) {
            xq3Var = ((kx1) mx1Var).a;
        } else {
            if (!(mx1Var instanceof lx1)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((lx1) mx1Var).a;
        }
        zx1 zx1Var = (zx1) xq3Var;
        wx1Var.getClass();
        return new lx1(new zx1(pq3.a(zs4.b(ys4Var), jSONObject, "value", yx1.a, ys4Var.d(), zx1Var != null ? zx1Var.a : null, tx1.d, uq3.a)));
    }
}
