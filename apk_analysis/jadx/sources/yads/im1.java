package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class im1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = lm1.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "allow_empty", o36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new hm1(as2Var, oq3.a(ys4Var, jSONObject, "condition", o36Var, nl3Var, l66Var), oq3.a(ys4Var, jSONObject, "label_id", w36.c), (String) wq3.a("variable", jSONObject));
    }
}
