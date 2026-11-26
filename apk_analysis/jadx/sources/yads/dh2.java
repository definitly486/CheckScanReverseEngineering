package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dh2 implements kv5 {
    public final tq3 a;

    public dh2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = uq3.a;
        return new kh2(pq3.b(tr4VarB, jSONObject, "bitrate", s36Var, zD, null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "mime_type", w36.c, zD, (zw2) null), pq3.b(tr4VarB, jSONObject, "resolution", zD, (zw2) null, this.a.h9), pq3.a(tr4VarB, jSONObject, "url", w36.e, zD, null, bt4.b, l66Var));
    }
}
