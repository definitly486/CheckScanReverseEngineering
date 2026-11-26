package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ip1 implements ln0 {
    public final tq3 a;

    public ip1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final dp1 a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = lp1.b;
        as2 as2Var = lp1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "angle", s36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new dp1(as2Var, wq3.b(ys4Var, jSONObject, "color_map", this.a.P4, lp1.d), oq3.a(ys4Var, jSONObject, "colors", w36.f, bt4.a, lp1.c, uq3.a));
    }
}
