package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hj1 implements ln0 {
    public final tq3 a;

    public hj1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "default")) {
            vb1 vb1Var = (vb1) this.a.I2.getValue();
            vb1Var.getClass();
            af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "space_between_centers", vb1Var.a.v3);
            if (af1Var == null) {
                af1Var = yb1.a;
            }
            return new ej1(new ub1(af1Var));
        }
        if (!defpackage.aa4.e(strA, "stretch")) {
            xq3 xq3Var = ys4Var.b().get(strA);
            if (xq3Var == null) {
                throw gt4.b(strA, jSONObject);
            }
            mj1 mj1Var = xq3Var instanceof mj1 ? (mj1) xq3Var : null;
            if (mj1Var != null) {
                return ((jj1) this.a.b4.getValue()).a(ys4Var, mj1Var, jSONObject);
            }
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        g42 g42Var = (g42) this.a.r7.getValue();
        g42Var.getClass();
        af1 af1Var2 = (af1) wq3.c(ys4Var, jSONObject, "item_spacing", g42Var.a.v3);
        if (af1Var2 == null) {
            af1Var2 = j42.a;
        }
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = j42.c;
        as2 as2Var = j42.b;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "max_visible_items", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new fj1(new f42(af1Var2, as2Var));
    }
}
