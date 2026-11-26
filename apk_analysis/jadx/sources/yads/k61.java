package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k61 implements ln0 {
    public final tq3 a;

    public k61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "set")) {
            return new i61(new b61(wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, ((c61) this.a.R1.getValue()).a.U1, f61.a)));
        }
        if (defpackage.aa4.e(strA, "change_bounds")) {
            ((w51) this.a.O1.getValue()).getClass();
            return new h61(w51.b(ys4Var, jSONObject));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        p61 p61Var = xq3Var instanceof p61 ? (p61) xq3Var : null;
        if (p61Var != null) {
            return ((m61) this.a.W1.getValue()).a(ys4Var, p61Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
