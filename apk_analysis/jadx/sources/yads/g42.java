package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g42 implements ln0 {
    public final tq3 a;

    public g42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "item_spacing", this.a.v3);
        if (af1Var == null) {
            af1Var = j42.a;
        }
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = j42.c;
        as2 as2Var = j42.b;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "max_visible_items", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new f42(af1Var, as2Var);
    }
}
