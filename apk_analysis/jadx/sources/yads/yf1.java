package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yf1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ag1(pq3.a(tr4VarB, jSONObject, "name", zD, null), pq3.a(tr4VarB, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, zD, (zw2) null, fd1.d, uq3.a));
    }
}
