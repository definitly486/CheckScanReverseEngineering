package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sk1 implements ln0 {
    public final tq3 a;

    public sk1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "regex")) {
            ((wk1) this.a.l4.getValue()).getClass();
            return new lk1(new vk1(oq3.a(ys4Var, jSONObject, "pattern", w36.c)));
        }
        if (defpackage.aa4.e(strA, "expression")) {
            ((ok1) this.a.i4.getValue()).getClass();
            o36 o36Var = w36.a;
            nl3 nl3Var = bt4.c;
            y50 y50Var = oq3.a;
            return new kk1(new nk1(oq3.a(ys4Var, jSONObject, "condition", o36Var, nl3Var, uq3.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        cl1 cl1Var = xq3Var instanceof cl1 ? (cl1) xq3Var : null;
        if (cl1Var != null) {
            return ((uk1) this.a.q4.getValue()).a(ys4Var, cl1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
