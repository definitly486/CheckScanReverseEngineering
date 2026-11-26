package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xf1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new wf1((String) wq3.a("name", jSONObject), (fd1) wq3.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, fd1.d, uq3.a));
    }
}
