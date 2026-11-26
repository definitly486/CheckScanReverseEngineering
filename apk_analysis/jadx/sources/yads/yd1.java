package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yd1 implements ln0 {
    public final tq3 a;

    public yd1(tq3 tq3Var) {
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
        he1 he1Var = xq3Var2 instanceof he1 ? (he1) xq3Var2 : null;
        if (he1Var != null) {
            if (he1Var instanceof fe1) {
                strA = "blur";
            } else {
                if (!(he1Var instanceof ge1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "rtl_mirror";
            }
        }
        if (defpackage.aa4.e(strA, "blur")) {
            b51 b51Var = (b51) this.a.J1.getValue();
            if (he1Var == null) {
                xq3Var = null;
            } else if (he1Var instanceof fe1) {
                xq3Var = ((fe1) he1Var).a;
            } else {
                if (!(he1Var instanceof ge1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var = ((ge1) he1Var).a;
            }
            e51 e51Var = (e51) xq3Var;
            b51Var.getClass();
            return new fe1(new e51(pq3.a(zs4.b(ys4Var), jSONObject, "radius", w36.b, ys4Var.d(), e51Var != null ? e51Var.a : null, bt4.e, d51.a)));
        }
        if (!defpackage.aa4.e(strA, "rtl_mirror")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        ce1 ce1Var = (ce1) this.a.h3.getValue();
        if (he1Var != null) {
            if (he1Var instanceof fe1) {
                obj = ((fe1) he1Var).a;
            } else {
                if (!(he1Var instanceof ge1)) {
                    defpackage.me0.e();
                    return null;
                }
                obj = ((ge1) he1Var).a;
            }
        }
        ce1Var.getClass();
        return new ge1(new ee1());
    }
}
