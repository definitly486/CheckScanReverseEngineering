package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nt0 implements ln0 {
    public final tq3 a;

    public nt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        xq3 xq3Var;
        xq3 xq3Var2;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var3 = ys4Var.b().get(strA);
        rt0 rt0Var = xq3Var3 instanceof rt0 ? (rt0) xq3Var3 : null;
        if (rt0Var != null) {
            if (rt0Var instanceof pt0) {
                strA = "text";
            } else {
                if (!(rt0Var instanceof qt0)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "url";
            }
        }
        if (defpackage.aa4.e(strA, "text")) {
            m60 m60Var = (m60) this.a.t.getValue();
            if (rt0Var == null) {
                xq3Var2 = null;
            } else if (rt0Var instanceof pt0) {
                xq3Var2 = ((pt0) rt0Var).a;
            } else {
                if (!(rt0Var instanceof qt0)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((qt0) rt0Var).a;
            }
            o60 o60Var = (o60) xq3Var2;
            m60Var.getClass();
            return new pt0(new o60(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.c, ys4Var.d(), o60Var != null ? o60Var.a : null)));
        }
        if (!defpackage.aa4.e(strA, "url")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        t60 t60Var = (t60) this.a.w.getValue();
        if (rt0Var == null) {
            xq3Var = null;
        } else if (rt0Var instanceof pt0) {
            xq3Var = ((pt0) rt0Var).a;
        } else {
            if (!(rt0Var instanceof qt0)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((qt0) rt0Var).a;
        }
        v60 v60Var = (v60) xq3Var;
        t60Var.getClass();
        return new qt0(new v60(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.e, ys4Var.d(), v60Var != null ? v60Var.a : null, bt4.b, uq3.a)));
    }
}
