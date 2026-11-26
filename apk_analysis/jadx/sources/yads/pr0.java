package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pr0 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u36 u36Var = w36.c;
        as2 as2VarB = oq3.b(ys4Var, jSONObject, "description", u36Var);
        as2 as2VarB2 = oq3.b(ys4Var, jSONObject, "hint", u36Var);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "is_checked", o36Var, nl3Var);
        m36 m36Var = sr0.d;
        nl3 nl3Var2 = jr0.d;
        xr2 xr2Var = sr0.a;
        l66 l66Var = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "mode", m36Var, nl3Var2, l66Var, xr2Var);
        as2 as2Var = as2VarA2 == null ? xr2Var : as2VarA2;
        as2 as2Var2 = sr0.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "mute_after_action", o36Var, nl3Var, l66Var, as2Var2);
        if (as2VarA3 != null) {
            as2Var2 = as2VarA3;
        }
        as2 as2VarB3 = oq3.b(ys4Var, jSONObject, "state_description", u36Var);
        lr0 lr0Var = (lr0) wq3.a(ys4Var, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, lr0.d, l66Var);
        if (lr0Var == null) {
            lr0Var = sr0.c;
        }
        return new mr0(as2VarB, as2VarB2, as2VarA, as2Var, as2Var2, as2VarB3, lr0Var);
    }
}
