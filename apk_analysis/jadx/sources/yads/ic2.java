package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ic2 implements qv5 {
    public final tq3 a;

    public ic2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final fc2 a(vc2 vc2Var) {
        if (vc2Var instanceof uc2) {
            ((rc2) this.a.K8.getValue()).getClass();
            return new ec2(new oc2());
        }
        if (vc2Var instanceof tc2) {
            ((mc2) this.a.H8.getValue()).getClass();
            return new dc2(new jc2());
        }
        defpackage.me0.e();
        return null;
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a((vc2) xq3Var);
    }
}
