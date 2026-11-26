package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class aa1 implements qv5 {
    public final tq3 a;

    public aa1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final x91 a(ys4 ys4Var, da1 da1Var, JSONObject jSONObject) {
        if (da1Var instanceof ca1) {
            ((vj1) this.a.h4.getValue()).getClass();
            return new w91(new sj1());
        }
        if (!(da1Var instanceof ba1)) {
            defpackage.me0.e();
            return null;
        }
        le1 le1Var = (le1) this.a.o3.getValue();
        ne1 ne1Var = ((ba1) da1Var).a;
        le1Var.getClass();
        return new v91(new ie1(qq3.a(ys4Var, ne1Var.a, jSONObject, "value", w36.b, bt4.e, me1.a)));
    }
}
