package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gc2 implements ln0 {
    public final tq3 a;

    public gc2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "non_modal")) {
            ((pc2) this.a.I8.getValue()).getClass();
            return new ec2(new oc2());
        }
        if (defpackage.aa4.e(strA, "modal")) {
            ((kc2) this.a.F8.getValue()).getClass();
            return new dc2(new jc2());
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        vc2 vc2Var = xq3Var instanceof vc2 ? (vc2) xq3Var : null;
        if (vc2Var != null) {
            return ((ic2) this.a.N8.getValue()).a(vc2Var);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
