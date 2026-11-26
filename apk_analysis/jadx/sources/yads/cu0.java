package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cu0 implements ln0 {
    public final tq3 a;

    public cu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        List listD = wq3.d(ys4Var, jSONObject, "on_fail_actions", this.a.k1);
        List listD2 = wq3.d(ys4Var, jSONObject, "on_success_actions", this.a.k1);
        v36 v36Var = w36.e;
        nl3 nl3Var = bt4.b;
        y50 y50Var = oq3.a;
        return new bu0(listD, listD2, oq3.a(ys4Var, jSONObject, "url", v36Var, nl3Var, uq3.a));
    }
}
