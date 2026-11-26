package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vw1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        m36 m36Var = yw1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = yw1.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new uw1(as2Var, oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e, l66Var));
    }
}
