package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cd2 implements ln0 {
    public final tq3 a;

    public cd2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        ru1 ru1Var = (ru1) wq3.c(ys4Var, jSONObject, "pivot_x", this.a.O5);
        if (ru1Var == null) {
            ru1Var = fd2.a;
        }
        ru1 ru1Var2 = (ru1) wq3.c(ys4Var, jSONObject, "pivot_y", this.a.O5);
        if (ru1Var2 == null) {
            ru1Var2 = fd2.b;
        }
        return new bd2(ru1Var, ru1Var2, oq3.a(ys4Var, jSONObject, "rotation", w36.d, bt4.d));
    }
}
