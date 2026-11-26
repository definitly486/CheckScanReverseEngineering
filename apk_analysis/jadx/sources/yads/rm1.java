package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rm1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = um1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "allow_empty", o36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        u36 u36Var = w36.c;
        return new qm1(as2Var, oq3.a(ys4Var, jSONObject, "label_id", u36Var), oq3.a(ys4Var, jSONObject, "pattern", u36Var), (String) wq3.a("variable", jSONObject));
    }
}
