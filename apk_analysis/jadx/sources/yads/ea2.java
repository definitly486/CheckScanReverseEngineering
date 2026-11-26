package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ea2 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((ga2) xq3Var).a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = fa2.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "is_enabled", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new ba2(as2Var);
    }
}
