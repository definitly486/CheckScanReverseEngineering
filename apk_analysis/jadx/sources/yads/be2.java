package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class be2 implements ln0 {
    public final tq3 a;

    public be2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        List listA = wq3.a(ys4Var, jSONObject, "actions", this.a.k1, ee2.c);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "condition", o36Var, nl3Var, l66Var);
        m36 m36Var = ee2.b;
        nl3 nl3Var2 = zd2.d;
        as2 as2Var = ee2.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "mode", m36Var, nl3Var2, l66Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new ae2(listA, as2VarA, as2Var);
    }
}
