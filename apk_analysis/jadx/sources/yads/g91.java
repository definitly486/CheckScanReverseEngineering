package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g91 implements kv5 {
    public final tq3 a;

    public g91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "margins", zD, (zw2) null, this.a.Y2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        return new j91(zw2VarB, pq3.b(tr4VarB, jSONObject, "show_at_end", o36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "show_at_start", o36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, "show_between", o36Var, zD, null, nl3Var, l66Var), pq3.a(tr4VarB, jSONObject, "style", zD, (zw2) null, this.a.V2));
    }
}
