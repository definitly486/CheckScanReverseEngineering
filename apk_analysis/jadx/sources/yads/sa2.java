package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sa2 implements kv5 {
    public static va2 a(ys4 ys4Var, va2 va2Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        p36 p36Var = w36.f;
        zw2 zw2Var = va2Var != null ? va2Var.a : null;
        nl3 nl3Var = bt4.a;
        l66 l66Var = uq3.a;
        return new va2(pq3.a(tr4VarB, jSONObject, "color", p36Var, zD, zw2Var, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "is_enabled", w36.a, zD, va2Var != null ? va2Var.b : null, bt4.c, l66Var));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
