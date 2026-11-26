package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l61 implements ln0 {
    public final tq3 a;

    public l61(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        xq3 xq3Var;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var2 = ys4Var.b().get(strA);
        Object obj = null;
        p61 p61Var = xq3Var2 instanceof p61 ? (p61) xq3Var2 : null;
        if (p61Var != null) {
            if (p61Var instanceof o61) {
                strA = "set";
            } else {
                if (!(p61Var instanceof n61)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "change_bounds";
            }
        }
        if (!defpackage.aa4.e(strA, "set")) {
            if (!defpackage.aa4.e(strA, "change_bounds")) {
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            }
            x51 x51Var = (x51) this.a.P1.getValue();
            if (p61Var != null) {
                if (p61Var instanceof o61) {
                    obj = ((o61) p61Var).a;
                } else {
                    if (!(p61Var instanceof n61)) {
                        defpackage.me0.e();
                        return null;
                    }
                    obj = ((n61) p61Var).a;
                }
            }
            x51Var.getClass();
            return new n61(x51.a(ys4Var, (a61) obj, jSONObject));
        }
        d61 d61Var = (d61) this.a.S1.getValue();
        if (p61Var == null) {
            xq3Var = null;
        } else if (p61Var instanceof o61) {
            xq3Var = ((o61) p61Var).a;
        } else {
            if (!(p61Var instanceof n61)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((n61) p61Var).a;
        }
        g61 g61Var = (g61) xq3Var;
        d61Var.getClass();
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        obj = g61Var != null ? g61Var.a : null;
        defpackage.cl4 cl4Var = d61Var.a.V1;
        st3 st3Var = f61.a;
        st3Var.getClass();
        return new o61(new g61(pq3.a(tr4VarB, jSONObject, FirebaseAnalytics.Param.ITEMS, zD, (zw2) obj, cl4Var, st3Var)));
    }
}
