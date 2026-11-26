package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class n02 implements qv5 {
    public final tq3 a;

    public n02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final f02 a(ys4 ys4Var, q02 q02Var, JSONObject jSONObject) {
        if (q02Var instanceof p02) {
            return new e02(((jy1) this.a.r6.getValue()).a(ys4Var, ((p02) q02Var).a, jSONObject));
        }
        if (q02Var instanceof o02) {
            return new d02(((t61) this.a.Z1.getValue()).a(ys4Var, ((o02) q02Var).a, jSONObject));
        }
        defpackage.me0.e();
        return null;
    }
}
