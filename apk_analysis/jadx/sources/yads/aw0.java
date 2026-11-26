package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class aw0 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "state_id", w36.c);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = dw0.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "temporary", o36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new zv0(as2VarA, as2Var);
    }
}
