package yads;

import com.tapjoy.TJKeyValueStorageKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xt0 implements ln0 {
    public final tq3 a;

    public xt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u36 u36Var = w36.c;
        return new wt0((oe2) wq3.c(ys4Var, jSONObject, "value", this.a.X8), oq3.a(ys4Var, jSONObject, TJKeyValueStorageKt.KEY, u36Var), oq3.a(ys4Var, jSONObject, "variable_name", u36Var));
    }
}
