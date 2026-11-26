package yads;

import com.tapjoy.TJKeyValueStorageKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yt0 implements kv5 {
    public final tq3 a;

    public yt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final au0 a(ys4 ys4Var, au0 au0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        return new au0(pq3.a(tr4VarB, jSONObject, TJKeyValueStorageKt.KEY, u36Var, zD, au0Var != null ? au0Var.a : null), pq3.b(tr4VarB, jSONObject, "value", zD, au0Var != null ? au0Var.b : null, this.a.Y8), pq3.a(tr4VarB, jSONObject, "variable_name", u36Var, zD, au0Var != null ? au0Var.c : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
