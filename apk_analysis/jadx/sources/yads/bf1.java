package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bf1 implements ln0 {
    public static af1 b(ys4 ys4Var, JSONObject jSONObject) {
        m36 m36Var = ef1.b;
        nl3 nl3Var = g12.d;
        as2 as2Var = ef1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new af1(as2Var, oq3.a(ys4Var, jSONObject, "value", w36.b, bt4.e, ef1.c));
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
