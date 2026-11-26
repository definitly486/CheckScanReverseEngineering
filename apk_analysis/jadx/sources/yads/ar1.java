package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ar1 implements qv5 {
    public final tq3 a;

    public ar1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final xq1 a(ys4 ys4Var, pr1 pr1Var, JSONObject jSONObject) {
        if (pr1Var instanceof or1) {
            kr1 kr1Var = (kr1) this.a.p5.getValue();
            mr1 mr1Var = ((or1) pr1Var).a;
            kr1Var.getClass();
            return new wq1(kr1.a(ys4Var, mr1Var, jSONObject));
        }
        if (!(pr1Var instanceof nr1)) {
            defpackage.me0.e();
            return null;
        }
        er1 er1Var = (er1) this.a.m5.getValue();
        gr1 gr1Var = ((nr1) pr1Var).a;
        er1Var.getClass();
        return new vq1(er1.a(ys4Var, gr1Var, jSONObject));
    }
}
