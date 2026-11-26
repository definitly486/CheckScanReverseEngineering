package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ms1 implements ln0 {
    public final tq3 a;

    public ms1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        int iHashCode = strA.hashCode();
        if (iHashCode != -921832806) {
            if (iHashCode != 97445748) {
                if (iHashCode == 343327108 && strA.equals("wrap_content")) {
                    ((mq1) this.a.e5.getValue()).getClass();
                    return new js1(new lq1());
                }
            } else if (strA.equals("fixed")) {
                return new is1(new vp1((af1) wq3.a(ys4Var, jSONObject, "neighbour_page_width", ((wp1) this.a.V4.getValue()).a.v3)));
            }
        } else if (strA.equals("percentage")) {
            return new ks1(new qq1((eu1) wq3.a(ys4Var, jSONObject, "page_width", ((rq1) this.a.h5.getValue()).a.C5)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        ss1 ss1Var = xq3Var instanceof ss1 ? (ss1) xq3Var : null;
        if (ss1Var != null) {
            return ((os1) this.a.v5.getValue()).a(ys4Var, ss1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
