package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i92 implements ln0 {
    public final tq3 a;

    public i92(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "solid")) {
            ((u22) this.a.i7.getValue()).getClass();
            p36 p36Var = w36.f;
            nl3 nl3Var = bt4.a;
            y50 y50Var = oq3.a;
            return new g92(new t22(oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, uq3.a)));
        }
        if (defpackage.aa4.e(strA, "cloud")) {
            x61 x61Var = (x61) this.a.a2.getValue();
            x61Var.getClass();
            p36 p36Var2 = w36.f;
            nl3 nl3Var2 = bt4.a;
            y50 y50Var2 = oq3.a;
            return new f92(new w61(oq3.a(ys4Var, jSONObject, "color", p36Var2, nl3Var2, uq3.a), oq3.a(ys4Var, jSONObject, "corner_radius", w36.b, bt4.e, a71.a), (yc1) wq3.c(ys4Var, jSONObject, "paddings", x61Var.a.X2)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        n92 n92Var = xq3Var instanceof n92 ? (n92) xq3Var : null;
        if (n92Var != null) {
            return ((k92) this.a.a8.getValue()).a(ys4Var, n92Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
