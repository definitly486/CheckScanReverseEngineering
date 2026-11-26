package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class v82 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        cb2 cb2Var = (cb2) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, cb2Var.a, jSONObject, "description", w36.c);
        t72 t72Var = (t72) qq3.a(ys4Var, cb2Var.b, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, t72.d, uq3.a);
        if (t72Var == null) {
            t72Var = w82.a;
        }
        return new u72(as2VarB, t72Var);
    }
}
