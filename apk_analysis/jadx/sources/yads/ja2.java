package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ja2 implements qv5 {
    public final tq3 a;

    public ja2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final aa2 a(ys4 ys4Var, ya2 ya2Var, JSONObject jSONObject) {
        if (ya2Var instanceof wa2) {
            return new y92(((na2) this.a.g8.getValue()).a(ys4Var, ((wa2) ya2Var).a, jSONObject));
        }
        if (!(ya2Var instanceof xa2)) {
            defpackage.me0.e();
            return null;
        }
        ta2 ta2Var = (ta2) this.a.j8.getValue();
        va2 va2Var = ((xa2) ya2Var).a;
        ta2Var.getClass();
        as2 as2VarA = qq3.a(ys4Var, va2Var.a, jSONObject, "color", w36.f, bt4.a);
        zw2 zw2Var = va2Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = ua2.a;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var, jSONObject, "is_enabled", o36Var, nl3Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new z92(new qa2(as2VarA, as2Var));
    }
}
