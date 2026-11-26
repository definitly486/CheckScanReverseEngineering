package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mt0 implements ln0 {
    public final tq3 a;

    public mt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "text")) {
            ((l60) this.a.s.getValue()).getClass();
            return new jt0(new k60(oq3.a(ys4Var, jSONObject, "value", w36.c)));
        }
        if (defpackage.aa4.e(strA, "url")) {
            ((s60) this.a.v.getValue()).getClass();
            v36 v36Var = w36.e;
            nl3 nl3Var = bt4.b;
            y50 y50Var = oq3.a;
            return new kt0(new r60(oq3.a(ys4Var, jSONObject, "value", v36Var, nl3Var, uq3.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        rt0 rt0Var = xq3Var instanceof rt0 ? (rt0) xq3Var : null;
        if (rt0Var != null) {
            return ((ot0) this.a.e0.getValue()).a(ys4Var, rt0Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
