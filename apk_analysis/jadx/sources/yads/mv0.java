package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mv0 implements ln0 {
    public final tq3 a;

    public mv0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [yads.zw2] */
    /* JADX WARN: Type inference failed for: r9v0, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        sv0 sv0Var = xq3Var instanceof sv0 ? (sv0) xq3Var : null;
        if (sv0Var != null) {
            if (sv0Var instanceof qv0) {
                strA = TypedValues.CycleType.S_WAVE_OFFSET;
            } else if (sv0Var instanceof pv0) {
                strA = FirebaseAnalytics.Param.INDEX;
            } else if (sv0Var instanceof rv0) {
                strA = TtmlNode.START;
            } else {
                if (!(sv0Var instanceof ov0)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = TtmlNode.END;
            }
        }
        int iHashCode = strA.hashCode();
        if (iHashCode != -1019779949) {
            if (iHashCode != 100571) {
                if (iHashCode != 100346066) {
                    if (iHashCode == 109757538 && strA.equals(TtmlNode.START)) {
                        iq5 iq5Var = (iq5) this.a.U9.getValue();
                        iq5Var.getClass();
                        return new rv0(new kq5());
                    }
                } else if (strA.equals(FirebaseAnalytics.Param.INDEX)) {
                    jf3 jf3Var = (jf3) this.a.z9.getValue();
                    mf3 mf3Var = (mf3) (sv0Var != null ? sv0Var.a() : null);
                    jf3Var.getClass();
                    return new pv0(new mf3(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.b, ys4Var.d(), mf3Var != null ? mf3Var.a : null, bt4.e, lf3.a)));
                }
                jSONObject3 = jSONObject;
            } else {
                jSONObject2 = jSONObject;
                if (strA.equals(TtmlNode.END)) {
                    rn2 rn2Var = (rn2) this.a.w9.getValue();
                    rn2Var.getClass();
                    return new ov0(new tn2());
                }
            }
            throw gt4.b(jSONObject3, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        jSONObject2 = jSONObject;
        if (strA.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
            jp4 jp4Var = (jp4) this.a.O9.getValue();
            mp4 mp4Var = (mp4) (sv0Var != null ? sv0Var.a() : null);
            jp4Var.getClass();
            return new qv0(new mp4(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.b, ys4Var.d(), mp4Var != null ? mp4Var.a : null, bt4.e, lp4.a)));
        }
        jSONObject3 = jSONObject2;
        throw gt4.b(jSONObject3, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
