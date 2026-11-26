package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lw1 implements ln0 {
    public final tq3 a;

    public lw1(tq3 tq3Var) {
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
        pw1 pw1Var = xq3Var2 instanceof pw1 ? (pw1) xq3Var2 : null;
        if (pw1Var != null) {
            if (pw1Var instanceof nw1) {
                strA = "fixed";
            } else {
                if (!(pw1Var instanceof ow1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "relative";
            }
        }
        if (defpackage.aa4.e(strA, "fixed")) {
            ww1 ww1Var = (ww1) this.a.Y5.getValue();
            if (pw1Var != null) {
                if (pw1Var instanceof nw1) {
                    obj = ((nw1) pw1Var).a;
                } else {
                    if (!(pw1Var instanceof ow1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    obj = ((ow1) pw1Var).a;
                }
            }
            ww1Var.getClass();
            return new nw1(ww1.a(ys4Var, (zw1) obj, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "relative")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        px1 px1Var = (px1) this.a.e6.getValue();
        if (pw1Var == null) {
            xq3Var = null;
        } else if (pw1Var instanceof nw1) {
            xq3Var = ((nw1) pw1Var).a;
        } else {
            if (!(pw1Var instanceof ow1)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((ow1) pw1Var).a;
        }
        rx1 rx1Var = (rx1) xq3Var;
        px1Var.getClass();
        return new ow1(new rx1(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.d, ys4Var.d(), rx1Var != null ? rx1Var.a : null, bt4.d, uq3.a)));
    }
}
