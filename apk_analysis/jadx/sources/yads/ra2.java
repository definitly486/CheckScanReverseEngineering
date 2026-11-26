package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ra2 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, l66Var);
        o36 o36Var = w36.a;
        nl3 nl3Var2 = bt4.c;
        as2 as2Var = ua2.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var2, l66Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new qa2(as2VarA, as2Var);
    }
}
