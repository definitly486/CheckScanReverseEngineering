package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zf1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ag1 ag1Var = (ag1) xq3Var;
        return new wf1((String) qq3.a(ag1Var.a, jSONObject, "name"), (fd1) qq3.a(ag1Var.b, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, fd1.d, uq3.a));
    }
}
