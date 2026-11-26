package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class uk1 implements qv5 {
    public final tq3 a;

    public uk1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final mk1 a(ys4 ys4Var, cl1 cl1Var, JSONObject jSONObject) {
        if (cl1Var instanceof bl1) {
            yk1 yk1Var = (yk1) this.a.n4.getValue();
            zk1 zk1Var = ((bl1) cl1Var).a;
            yk1Var.getClass();
            return new lk1(new vk1(qq3.a(ys4Var, zk1Var.a, jSONObject, "pattern", w36.c)));
        }
        if (!(cl1Var instanceof al1)) {
            defpackage.me0.e();
            return null;
        }
        qk1 qk1Var = (qk1) this.a.k4.getValue();
        rk1 rk1Var = ((al1) cl1Var).a;
        qk1Var.getClass();
        return new kk1(new nk1(qq3.a(ys4Var, rk1Var.a, jSONObject, "condition", w36.a, bt4.c)));
    }
}
