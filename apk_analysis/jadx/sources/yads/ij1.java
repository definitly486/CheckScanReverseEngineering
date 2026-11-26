package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ij1 implements ln0 {
    public final tq3 a;

    public ij1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        xq3 xq3Var;
        xq3 xq3Var2;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var3 = ys4Var.b().get(strA);
        mj1 mj1Var = xq3Var3 instanceof mj1 ? (mj1) xq3Var3 : null;
        if (mj1Var != null) {
            if (mj1Var instanceof kj1) {
                strA = "default";
            } else {
                if (!(mj1Var instanceof lj1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "stretch";
            }
        }
        if (defpackage.aa4.e(strA, "default")) {
            wb1 wb1Var = (wb1) this.a.J2.getValue();
            if (mj1Var == null) {
                xq3Var2 = null;
            } else if (mj1Var instanceof kj1) {
                xq3Var2 = ((kj1) mj1Var).a;
            } else {
                if (!(mj1Var instanceof lj1)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((lj1) mj1Var).a;
            }
            zb1 zb1Var = (zb1) xq3Var2;
            wb1Var.getClass();
            return new kj1(new zb1(pq3.b(zs4.b(ys4Var), jSONObject, "space_between_centers", ys4Var.d(), zb1Var != null ? zb1Var.a : null, wb1Var.a.w3)));
        }
        if (!defpackage.aa4.e(strA, "stretch")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        h42 h42Var = (h42) this.a.s7.getValue();
        if (mj1Var == null) {
            xq3Var = null;
        } else if (mj1Var instanceof kj1) {
            xq3Var = ((kj1) mj1Var).a;
        } else {
            if (!(mj1Var instanceof lj1)) {
                defpackage.me0.e();
                return null;
            }
            xq3Var = ((lj1) mj1Var).a;
        }
        k42 k42Var = (k42) xq3Var;
        h42Var.getClass();
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new lj1(new k42(pq3.b(tr4VarB, jSONObject, "item_spacing", zD, k42Var != null ? k42Var.a : null, h42Var.a.w3), pq3.b(tr4VarB, jSONObject, "max_visible_items", w36.b, zD, k42Var != null ? k42Var.b : null, bt4.e, j42.c)));
    }
}
