package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class su0 implements kv5 {
    public final tq3 a;

    public su0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "download_callbacks", zD, (zw2) null, this.a.S2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        zw2 zw2VarB2 = pq3.b(tr4VarB, jSONObject, "is_enabled", o36Var, zD, null, nl3Var, l66Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, "log_id", w36.c, zD, (zw2) null);
        v36 v36Var = w36.e;
        nl3 nl3Var2 = bt4.b;
        return new nx0(zw2VarB, zw2VarB2, zw2VarA, pq3.b(tr4VarB, jSONObject, "log_url", v36Var, zD, null, nl3Var2, l66Var), pq3.c(tr4VarB, jSONObject, "menu_items", zD, null, this.a.o1), pq3.b(tr4VarB, jSONObject, "payload", zD, null), pq3.b(tr4VarB, jSONObject, "referer", v36Var, zD, null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "scope_id", zD, null), pq3.b(tr4VarB, jSONObject, TypedValues.AttributesType.S_TARGET, uu0.b, zD, null, wr0.d, l66Var), pq3.b(tr4VarB, jSONObject, "typed", zD, (zw2) null, this.a.c1), pq3.b(tr4VarB, jSONObject, "url", v36Var, zD, null, nl3Var2, l66Var));
    }
}
