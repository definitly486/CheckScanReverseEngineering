package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i42 implements qv5 {
    public final tq3 a;

    public i42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final f42 a(ys4 ys4Var, k42 k42Var, JSONObject jSONObject) {
        zw2 zw2Var = k42Var.a;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, "item_spacing", tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = j42.a;
        }
        zw2 zw2Var2 = k42Var.b;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = j42.c;
        as2 as2Var = j42.b;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "max_visible_items", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new f42(af1Var, as2Var);
    }
}
