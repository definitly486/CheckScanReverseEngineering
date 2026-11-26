package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class uc1 implements ln0 {
    public final tq3 a;

    public uc1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "shape_drawable")) {
            h02 h02Var = (h02) this.a.K6.getValue();
            h02Var.getClass();
            p36 p36Var = w36.f;
            nl3 nl3Var = bt4.a;
            y50 y50Var = oq3.a;
            return new tc1(new g02(oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, uq3.a), (f02) wq3.a(ys4Var, jSONObject, "shape", h02Var.a.N6), (l42) wq3.c(ys4Var, jSONObject, "stroke", h02Var.a.D7)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        xc1 xc1Var = xq3Var instanceof xc1 ? (xc1) xq3Var : null;
        if (xc1Var == null) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        wc1 wc1Var = (wc1) this.a.W2.getValue();
        wc1Var.getClass();
        j02 j02Var = (j02) wc1Var.a.M6.getValue();
        k02 k02Var = xc1Var.a;
        j02Var.getClass();
        as2 as2VarA = qq3.a(ys4Var, k02Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = k02Var.b;
        tq3 tq3Var = j02Var.a;
        f02 f02Var = (f02) qq3.a(ys4Var, zw2Var, jSONObject, "shape", tq3Var.P6, tq3Var.N6);
        zw2 zw2Var2 = k02Var.c;
        tq3 tq3Var2 = j02Var.a;
        return new tc1(new g02(as2VarA, f02Var, (l42) qq3.b(ys4Var, zw2Var2, jSONObject, "stroke", tq3Var2.F7, tq3Var2.D7)));
    }
}
