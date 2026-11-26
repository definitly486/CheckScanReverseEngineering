package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qr0 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "description", u36Var, zD, (zw2) null);
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "hint", u36Var, zD, (zw2) null);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        return new tr0(zw2VarB, zw2VarB2, pq3.b(tr4VarB, jSONObject, "is_checked", o36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "mode", sr0.d, zD, null, jr0.d, l66Var), pq3.b(tr4VarB, jSONObject, "mute_after_action", o36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "state_description", u36Var, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, zD, null, lr0.d, l66Var));
    }
}
