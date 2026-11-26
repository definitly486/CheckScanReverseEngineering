package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ot0 implements qv5 {
    public final tq3 a;

    public ot0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final lt0 a(ys4 ys4Var, rt0 rt0Var, JSONObject jSONObject) {
        if (rt0Var instanceof pt0) {
            n60 n60Var = (n60) this.a.u.getValue();
            o60 o60Var = ((pt0) rt0Var).a;
            n60Var.getClass();
            return new jt0(new k60(qq3.a(ys4Var, o60Var.a, jSONObject, "value", w36.c)));
        }
        if (!(rt0Var instanceof qt0)) {
            defpackage.me0.e();
            return null;
        }
        u60 u60Var = (u60) this.a.x.getValue();
        v60 v60Var = ((qt0) rt0Var).a;
        u60Var.getClass();
        return new kt0(new r60(qq3.a(ys4Var, v60Var.a, jSONObject, "value", w36.e, bt4.b)));
    }
}
