package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class u21 implements ln0 {
    public final tq3 a;

    public u21(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        Object objA;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        a31 a31Var = xq3Var instanceof a31 ? (a31) xq3Var : null;
        if (a31Var != null) {
            if (a31Var instanceof y21) {
                strA = "set";
            } else if (a31Var instanceof w21) {
                strA = "fade";
            } else if (a31Var instanceof x21) {
                strA = "scale";
            } else {
                if (!(a31Var instanceof z21)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "slide";
            }
        }
        int iHashCode = strA.hashCode();
        if (iHashCode != 113762) {
            if (iHashCode != 3135100) {
                if (iHashCode != 109250890) {
                    if (iHashCode == 109526449 && strA.equals("slide")) {
                        return new z21(((r12) this.a.X6.getValue()).a(ys4Var, (u12) (a31Var != null ? a31Var.a() : null), jSONObject));
                    }
                } else if (strA.equals("scale")) {
                    py1 py1Var = (py1) this.a.t6.getValue();
                    objA = a31Var != null ? a31Var.a() : null;
                    py1Var.getClass();
                    return new x21(py1.a(ys4Var, (sy1) objA, jSONObject));
                }
            } else if (strA.equals("fade")) {
                qd1 qd1Var = (qd1) this.a.e3.getValue();
                objA = a31Var != null ? a31Var.a() : null;
                qd1Var.getClass();
                return new w21(qd1.a(ys4Var, (td1) objA, jSONObject));
            }
        } else if (strA.equals("set")) {
            k21 k21Var = (k21) this.a.x1.getValue();
            n21 n21Var = (n21) (a31Var != null ? a31Var.a() : null);
            k21Var.getClass();
            boolean zD = ys4Var.d();
            tr4 tr4VarB = zs4.b(ys4Var);
            objA = n21Var != null ? n21Var.a : null;
            defpackage.cl4 cl4Var = k21Var.a.A1;
            st3 st3Var = m21.a;
            st3Var.getClass();
            return new y21(new n21(pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, (zw2) objA, cl4Var, st3Var)));
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
