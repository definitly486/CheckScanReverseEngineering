package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rr0 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        tr0 tr0Var = (tr0) xq3Var;
        zw2 zw2Var = tr0Var.a;
        u36 u36Var = w36.c;
        as2 as2VarB = qq3.b(ys4Var, zw2Var, jSONObject, "description", u36Var);
        as2 as2VarB2 = qq3.b(ys4Var, tr0Var.b, jSONObject, "hint", u36Var);
        zw2 zw2Var2 = tr0Var.c;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2VarB3 = qq3.b(ys4Var, zw2Var2, jSONObject, "is_checked", o36Var, nl3Var);
        zw2 zw2Var3 = tr0Var.d;
        m36 m36Var = sr0.d;
        nl3 nl3Var2 = jr0.d;
        xr2 xr2Var = sr0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var3, jSONObject, "mode", m36Var, nl3Var2, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var4 = tr0Var.e;
        xr2 xr2Var2 = sr0.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var4, jSONObject, "mute_after_action", o36Var, nl3Var, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        as2 as2VarB4 = qq3.b(ys4Var, tr0Var.f, jSONObject, "state_description", u36Var);
        lr0 lr0Var = (lr0) qq3.a(ys4Var, tr0Var.g, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, lr0.d, uq3.a);
        if (lr0Var == null) {
            lr0Var = sr0.c;
        }
        return new mr0(as2VarB, as2VarB2, as2VarB3, as2Var, as2Var2, as2VarB4, lr0Var);
    }
}
