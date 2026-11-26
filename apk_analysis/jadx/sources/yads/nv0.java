package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nv0 implements qv5 {
    public final tq3 a;

    public nv0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final kv0 a(ys4 ys4Var, sv0 sv0Var, JSONObject jSONObject) {
        if (sv0Var instanceof qv0) {
            kp4 kp4Var = (kp4) this.a.P9.getValue();
            mp4 mp4Var = ((qv0) sv0Var).a;
            kp4Var.getClass();
            return new iv0(new hp4(qq3.a(ys4Var, mp4Var.a, jSONObject, "value", w36.b, bt4.e, lp4.a)));
        }
        if (sv0Var instanceof pv0) {
            kf3 kf3Var = (kf3) this.a.A9.getValue();
            mf3 mf3Var = ((pv0) sv0Var).a;
            kf3Var.getClass();
            return new hv0(new hf3(qq3.a(ys4Var, mf3Var.a, jSONObject, "value", w36.b, bt4.e, lf3.a)));
        }
        if (sv0Var instanceof rv0) {
            ((jq5) this.a.V9.getValue()).getClass();
            return new jv0(new gq5());
        }
        if (sv0Var instanceof ov0) {
            ((sn2) this.a.x9.getValue()).getClass();
            return new gv0(new pn2());
        }
        defpackage.me0.e();
        return null;
    }
}
