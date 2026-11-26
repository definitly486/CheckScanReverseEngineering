package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t82 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "description", w36.c);
        t72 t72Var = (t72) wq3.a(ys4Var, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, t72.d, uq3.a);
        if (t72Var == null) {
            t72Var = w82.a;
        }
        return new u72(as2VarB, t72Var);
    }
}
