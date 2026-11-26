package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nm1 implements ln0 {
    public final tq3 a;

    public nm1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "regex")) {
            ((rm1) this.a.x4.getValue()).getClass();
            o36 o36Var = w36.a;
            nl3 nl3Var = bt4.c;
            as2 as2Var = um1.a;
            y50 y50Var = oq3.a;
            as2 as2VarA = oq3.a(ys4Var, jSONObject, "allow_empty", o36Var, nl3Var, uq3.a, as2Var);
            if (as2VarA != null) {
                as2Var = as2VarA;
            }
            u36 u36Var = w36.c;
            return new zl1(new qm1(as2Var, oq3.a(ys4Var, jSONObject, "label_id", u36Var), oq3.a(ys4Var, jSONObject, "pattern", u36Var), (String) wq3.a("variable", jSONObject)));
        }
        if (!defpackage.aa4.e(strA, "expression")) {
            xq3 xq3Var = ys4Var.b().get(strA);
            if (xq3Var == null) {
                throw gt4.b(strA, jSONObject);
            }
            ym1 ym1Var = xq3Var instanceof ym1 ? (ym1) xq3Var : null;
            if (ym1Var != null) {
                return ((pm1) this.a.C4.getValue()).a(ys4Var, ym1Var, jSONObject);
            }
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        ((im1) this.a.u4.getValue()).getClass();
        o36 o36Var2 = w36.a;
        nl3 nl3Var2 = bt4.c;
        as2 as2Var2 = lm1.a;
        y50 y50Var2 = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "allow_empty", o36Var2, nl3Var2, l66Var, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        return new yl1(new hm1(as2Var2, oq3.a(ys4Var, jSONObject, "condition", o36Var2, nl3Var2, l66Var), oq3.a(ys4Var, jSONObject, "label_id", w36.c), (String) wq3.a("variable", jSONObject)));
    }
}
