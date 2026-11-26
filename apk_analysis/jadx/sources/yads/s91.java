package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class s91 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        u91 u91Var = (u91) xq3Var;
        zw2 zw2Var = u91Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        return new p91(qq3.b(ys4Var, zw2Var, jSONObject, "bottom-left", s36Var, nl3Var, t91.a), qq3.b(ys4Var, u91Var.b, jSONObject, "bottom-right", s36Var, nl3Var, t91.b), qq3.b(ys4Var, u91Var.c, jSONObject, "top-left", s36Var, nl3Var, t91.c), qq3.b(ys4Var, u91Var.d, jSONObject, "top-right", s36Var, nl3Var, t91.d));
    }
}
