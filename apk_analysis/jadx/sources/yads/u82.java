package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class u82 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new cb2(pq3.b(tr4VarB, jSONObject, "description", w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, zD, null, t72.d, uq3.a));
    }
}
