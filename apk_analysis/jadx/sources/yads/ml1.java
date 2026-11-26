package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ml1 implements ln0 {
    public final tq3 a;

    public ml1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        int iHashCode = strA.hashCode();
        if (iHashCode != 106642798) {
            if (iHashCode != 393594385) {
                if (iHashCode == 575402001 && strA.equals(FirebaseAnalytics.Param.CURRENCY)) {
                    ((ga1) this.a.y2.getValue()).getClass();
                    return new hl1(new fa1((String) wq3.a("raw_text_variable", jSONObject), oq3.b(ys4Var, jSONObject, CommonUrlParts.LOCALE, w36.c)));
                }
            } else if (strA.equals("fixed_length")) {
                return new il1(((qe1) this.a.p3.getValue()).a(ys4Var, jSONObject));
            }
        } else if (strA.equals("phone")) {
            ((lu1) this.a.F5.getValue()).getClass();
            return new jl1(new ku1((String) wq3.a("raw_text_variable", jSONObject)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        sl1 sl1Var = xq3Var instanceof sl1 ? (sl1) xq3Var : null;
        if (sl1Var != null) {
            return ((ol1) this.a.t4.getValue()).a(ys4Var, sl1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
