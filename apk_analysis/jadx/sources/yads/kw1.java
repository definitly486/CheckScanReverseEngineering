package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kw1 implements ln0 {
    public final tq3 a;

    public kw1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "fixed")) {
            ((vw1) this.a.X5.getValue()).getClass();
            m36 m36Var = yw1.b;
            nl3 nl3Var = g12.d;
            as2 as2Var = yw1.a;
            y50 y50Var = oq3.a;
            l66 l66Var = uq3.a;
            as2 as2VarA = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var, l66Var, as2Var);
            if (as2VarA != null) {
                as2Var = as2VarA;
            }
            return new hw1(new uw1(as2Var, oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e, l66Var)));
        }
        if (defpackage.aa4.e(strA, "relative")) {
            ((ox1) this.a.d6.getValue()).getClass();
            r36 r36Var = w36.d;
            nl3 nl3Var2 = bt4.d;
            y50 y50Var2 = oq3.a;
            return new iw1(new nx1(oq3.a(ys4Var, jSONObject, "value", r36Var, nl3Var2, uq3.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        pw1 pw1Var = xq3Var instanceof pw1 ? (pw1) xq3Var : null;
        if (pw1Var != null) {
            return ((mw1) this.a.W5.getValue()).a(ys4Var, pw1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
