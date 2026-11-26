package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g41 implements ln0 {
    public final tq3 a;

    public g41(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        o41 o41Var = xq3Var instanceof o41 ? (o41) xq3Var : null;
        if (o41Var != null) {
            if (o41Var instanceof k41) {
                strA = "gradient";
            } else if (o41Var instanceof m41) {
                strA = "radial_gradient";
            } else if (o41Var instanceof j41) {
                strA = "image";
            } else if (o41Var instanceof n41) {
                strA = "solid";
            } else {
                if (!(o41Var instanceof l41)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "nine_patch_image";
            }
        }
        switch (strA.hashCode()) {
            case -30518633:
                if (strA.equals("nine_patch_image")) {
                    return new l41(((cq1) this.a.Z4.getValue()).a(ys4Var, (eq1) (o41Var != null ? o41Var.a() : null), jSONObject));
                }
                break;
            case 89650992:
                if (strA.equals("gradient")) {
                    return new k41(((jp1) this.a.N4.getValue()).a(ys4Var, (np1) (o41Var != null ? o41Var.a() : null), jSONObject));
                }
                break;
            case 100313435:
                if (strA.equals("image")) {
                    return new j41(((di1) this.a.U3.getValue()).a(ys4Var, (gi1) (o41Var != null ? o41Var.a() : null), jSONObject));
                }
                break;
            case 109618859:
                if (strA.equals("solid")) {
                    v22 v22Var = (v22) this.a.j7.getValue();
                    Object objA = o41Var != null ? o41Var.a() : null;
                    v22Var.getClass();
                    return new n41(v22.a(ys4Var, (x22) objA, jSONObject));
                }
                break;
            case 1881846096:
                if (strA.equals("radial_gradient")) {
                    return new m41(((bx1) this.a.k6.getValue()).a(ys4Var, (by1) (o41Var != null ? o41Var.a() : null), jSONObject));
                }
                break;
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
