package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t21 implements ln0 {
    public final tq3 a;

    public t21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        int iHashCode = strA.hashCode();
        if (iHashCode != 113762) {
            if (iHashCode != 3135100) {
                if (iHashCode != 109250890) {
                    if (iHashCode == 109526449 && strA.equals("slide")) {
                        return new r21(((q12) this.a.W6.getValue()).a(ys4Var, jSONObject));
                    }
                } else if (strA.equals("scale")) {
                    ((oy1) this.a.s6.getValue()).getClass();
                    return new p21(oy1.b(ys4Var, jSONObject));
                }
            } else if (strA.equals("fade")) {
                ((pd1) this.a.d3.getValue()).getClass();
                return new o21(pd1.b(ys4Var, jSONObject));
            }
        } else if (strA.equals("set")) {
            return new q21(new i21(wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, ((j21) this.a.w1.getValue()).a.z1, m21.a)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        a31 a31Var = xq3Var instanceof a31 ? (a31) xq3Var : null;
        if (a31Var != null) {
            return ((v21) this.a.B1.getValue()).a(ys4Var, a31Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
