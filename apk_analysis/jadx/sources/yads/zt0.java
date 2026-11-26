package yads;

import com.tapjoy.TJKeyValueStorageKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zt0 implements qv5 {
    public final tq3 a;

    public zt0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        au0 au0Var = (au0) xq3Var;
        zw2 zw2Var = au0Var.a;
        u36 u36Var = w36.c;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, TJKeyValueStorageKt.KEY, u36Var);
        zw2 zw2Var2 = au0Var.b;
        tq3 tq3Var = this.a;
        return new wt0((oe2) qq3.b(ys4Var, zw2Var2, jSONObject, "value", tq3Var.Z8, tq3Var.X8), as2VarA, qq3.a(ys4Var, au0Var.c, jSONObject, "variable_name", u36Var));
    }
}
