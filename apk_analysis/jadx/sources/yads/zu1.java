package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zu1 implements ln0 {
    public final tq3 a;

    public zu1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str;
        Object hv1Var;
        xq3 xq3Var;
        Object objOpt = jSONObject.opt(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        Object obj = null;
        Object obj2 = objOpt == JSONObject.NULL ? null : objOpt;
        if (obj2 == null) {
            str = null;
        } else {
            try {
                str = (String) obj2;
            } catch (ClassCastException unused) {
                ys4Var.a().b(gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, obj2));
                str = null;
            } catch (Exception e) {
                ys4Var.a().b(gt4.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, obj2, e));
                str = null;
            }
        }
        if (str == null) {
            str = "pivot-fixed";
        }
        xq3 xq3Var2 = ys4Var.b().get(str);
        iv1 iv1Var = xq3Var2 instanceof iv1 ? (iv1) xq3Var2 : null;
        if (iv1Var != null) {
            if (iv1Var instanceof gv1) {
                str = "pivot-fixed";
            } else {
                if (!(iv1Var instanceof hv1)) {
                    defpackage.me0.e();
                    return null;
                }
                str = "pivot-percentage";
            }
        }
        if (str.equals("pivot-fixed")) {
            uu1 uu1Var = (uu1) this.a.J5.getValue();
            if (iv1Var != null) {
                if (iv1Var instanceof gv1) {
                    obj = ((gv1) iv1Var).a;
                } else {
                    if (!(iv1Var instanceof hv1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    obj = ((hv1) iv1Var).a;
                }
            }
            uu1Var.getClass();
            hv1Var = new gv1(uu1.a(ys4Var, (xu1) obj, jSONObject));
        } else {
            if (!str.equals("pivot-percentage")) {
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
            }
            dv1 dv1Var = (dv1) this.a.M5.getValue();
            if (iv1Var == null) {
                xq3Var = null;
            } else if (iv1Var instanceof gv1) {
                xq3Var = ((gv1) iv1Var).a;
            } else {
                if (!(iv1Var instanceof hv1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var = ((hv1) iv1Var).a;
            }
            fv1 fv1Var = (fv1) xq3Var;
            dv1Var.getClass();
            hv1Var = new hv1(new fv1(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.d, ys4Var.d(), fv1Var != null ? fv1Var.a : null, bt4.d, uq3.a)));
        }
        return hv1Var;
    }
}
