package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class z42 implements ln0 {
    public final tq3 a;

    public z42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        i52 i52Var = xq3Var instanceof i52 ? (i52) xq3Var : null;
        if (i52Var != null) {
            if (i52Var instanceof h52) {
                strA = "solid";
            } else {
                if (!(i52Var instanceof g52)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "dashed";
            }
        }
        if (defpackage.aa4.e(strA, "solid")) {
            d52 d52Var = (d52) this.a.y7.getValue();
            if (i52Var != null) {
                if (i52Var instanceof h52) {
                    xq3Var2 = ((h52) i52Var).a;
                } else {
                    if (!(i52Var instanceof g52)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((g52) i52Var).a;
                }
            }
            d52Var.getClass();
            return new h52(new f52());
        }
        if (!defpackage.aa4.e(strA, "dashed")) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        v42 v42Var = (v42) this.a.v7.getValue();
        if (i52Var != null) {
            if (i52Var instanceof h52) {
                xq3Var2 = ((h52) i52Var).a;
            } else {
                if (!(i52Var instanceof g52)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((g52) i52Var).a;
            }
        }
        v42Var.getClass();
        return new g52(new x42());
    }
}
