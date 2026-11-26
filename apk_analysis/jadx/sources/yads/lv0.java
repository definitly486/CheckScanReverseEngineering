package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lv0 implements ln0 {
    public final tq3 a;

    public lv0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        ys4 ys4Var2;
        JSONObject jSONObject2;
        String strA = wq3.a(jSONObject);
        int iHashCode = strA.hashCode();
        if (iHashCode == -1019779949) {
            ys4Var2 = ys4Var;
            jSONObject2 = jSONObject;
            if (strA.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                ((ip4) this.a.N9.getValue()).getClass();
                return new iv0(new hp4(oq3.a(ys4Var2, jSONObject2, "value", w36.b, bt4.e, lp4.a)));
            }
        } else if (iHashCode != 100571) {
            if (iHashCode != 100346066) {
                if (iHashCode == 109757538 && strA.equals(TtmlNode.START)) {
                    ((hq5) this.a.T9.getValue()).getClass();
                    return new jv0(new gq5());
                }
            } else if (strA.equals(FirebaseAnalytics.Param.INDEX)) {
                ((if3) this.a.y9.getValue()).getClass();
                return new hv0(new hf3(oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e, lf3.a)));
            }
            ys4Var2 = ys4Var;
            jSONObject2 = jSONObject;
        } else {
            ys4Var2 = ys4Var;
            jSONObject2 = jSONObject;
            if (strA.equals(TtmlNode.END)) {
                ((qn2) this.a.v9.getValue()).getClass();
                return new gv0(new pn2());
            }
        }
        xq3 xq3Var = ys4Var2.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject2);
        }
        sv0 sv0Var = xq3Var instanceof sv0 ? (sv0) xq3Var : null;
        if (sv0Var != null) {
            return ((nv0) this.a.z0.getValue()).a(ys4Var2, sv0Var, jSONObject2);
        }
        throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
