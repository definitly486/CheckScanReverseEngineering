package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y42 implements ln0 {
    public final tq3 a;

    public y42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "solid")) {
            ((c52) this.a.x7.getValue()).getClass();
            return new r42(new b52());
        }
        if (defpackage.aa4.e(strA, "dashed")) {
            ((u42) this.a.u7.getValue()).getClass();
            return new q42(new t42());
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        i52 i52Var = xq3Var instanceof i52 ? (i52) xq3Var : null;
        if (i52Var != null) {
            return ((a52) this.a.C7.getValue()).a(i52Var);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
