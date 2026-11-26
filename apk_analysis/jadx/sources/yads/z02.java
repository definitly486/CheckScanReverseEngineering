package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z02 implements ln0 {
    public final tq3 a;

    public z02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        e12 e12Var = xq3Var instanceof e12 ? (e12) xq3Var : null;
        if (e12Var != null) {
            if (e12Var instanceof b12) {
                strA = "fixed";
            } else if (e12Var instanceof c12) {
                strA = "match_parent";
            } else {
                if (!(e12Var instanceof d12)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "wrap_content";
            }
        }
        int iHashCode = strA.hashCode();
        if (iHashCode != 97445748) {
            if (iHashCode != 343327108) {
                if (iHashCode == 1386124388 && strA.equals("match_parent")) {
                    return new c12(((rp1) this.a.T4.getValue()).a(ys4Var, (up1) (e12Var != null ? e12Var.a() : null), jSONObject));
                }
            } else if (strA.equals("wrap_content")) {
                return new d12(((gj2) this.a.q9.getValue()).a(ys4Var, (ij2) (e12Var != null ? e12Var.a() : null), jSONObject));
            }
        } else if (strA.equals("fixed")) {
            cf1 cf1Var = (cf1) this.a.w3.getValue();
            Object objA = e12Var != null ? e12Var.a() : null;
            cf1Var.getClass();
            return new b12(cf1.a(ys4Var, (ff1) objA, jSONObject));
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
