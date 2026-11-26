package yads;

import com.tapjoy.TJKeyValueStorageKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ve1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        u36 u36Var = w36.c;
        l66 l66Var = xe1.b;
        nl3 nl3Var = uq3.b;
        return new ye1(pq3.a(tr4VarB, jSONObject, TJKeyValueStorageKt.KEY, u36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "placeholder", u36Var, zD, null, nl3Var, xe1.c), pq3.b(tr4VarB, jSONObject, "regex", u36Var, zD, (zw2) null));
    }
}
