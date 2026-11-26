package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ha2 implements ln0 {
    public final tq3 a;

    public ha2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "particles")) {
            return new y92(((la2) this.a.e8.getValue()).a(ys4Var, jSONObject));
        }
        if (!defpackage.aa4.e(strA, "solid")) {
            xq3 xq3Var = ys4Var.b().get(strA);
            if (xq3Var == null) {
                throw gt4.b(strA, jSONObject);
            }
            ya2 ya2Var = xq3Var instanceof ya2 ? (ya2) xq3Var : null;
            if (ya2Var != null) {
                return ((ja2) this.a.m8.getValue()).a(ys4Var, ya2Var, jSONObject);
            }
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        ((ra2) this.a.h8.getValue()).getClass();
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, l66Var);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        as2 as2Var = ua2.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var2, l66Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new z92(new qa2(as2VarA, as2Var));
    }
}
