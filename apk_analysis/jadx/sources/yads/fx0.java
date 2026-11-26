package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fx0 implements ln0 {
    public final tq3 a;

    public fx0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        List listD = wq3.d(ys4Var, jSONObject, "headers", this.a.V0);
        m36 m36Var = ix0.b;
        nl3 nl3Var = ww0.d;
        as2 as2Var = ix0.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "method", m36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new xw0(listD, as2Var, oq3.a(ys4Var, jSONObject, "url", w36.e, bt4.b, l66Var));
    }
}
