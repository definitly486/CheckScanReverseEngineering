package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yu1 implements ln0 {
    public final tq3 a;

    public yu1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str;
        Object objOpt = jSONObject.opt(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        Object obj = objOpt == JSONObject.NULL ? null : objOpt;
        if (obj == null) {
            str = null;
        } else {
            try {
                str = (String) obj;
            } catch (ClassCastException unused) {
                ys4Var.a().b(gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, obj));
                str = null;
            } catch (Exception e) {
                ys4Var.a().b(gt4.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, obj, e));
                str = null;
            }
        }
        if (str == null) {
            str = "pivot-fixed";
        }
        if (str.equals("pivot-fixed")) {
            ((tu1) this.a.I5.getValue()).getClass();
            m36 m36Var = wu1.b;
            nl3 nl3Var = g12.d;
            as2 as2Var = wu1.a;
            y50 y50Var = oq3.a;
            as2 as2VarA = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var, uq3.a, as2Var);
            if (as2VarA != null) {
                as2Var = as2VarA;
            }
            return new pu1(new su1(as2Var, oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e)));
        }
        if (str.equals("pivot-percentage")) {
            ((cv1) this.a.L5.getValue()).getClass();
            r36 r36Var = w36.d;
            nl3 nl3Var2 = bt4.d;
            y50 y50Var2 = oq3.a;
            return new qu1(new bv1(oq3.a(ys4Var, jSONObject, "value", r36Var, nl3Var2, uq3.a)));
        }
        xq3 xq3Var = ys4Var.b().get(str);
        if (xq3Var == null) {
            throw gt4.b(str, jSONObject);
        }
        iv1 iv1Var = xq3Var instanceof iv1 ? (iv1) xq3Var : null;
        if (iv1Var != null) {
            return ((av1) this.a.Q5.getValue()).a(ys4Var, iv1Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
    }
}
