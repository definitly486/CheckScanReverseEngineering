package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mz1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        as2 as2Var = pz1.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        m36 m36Var = pz1.c;
        nl3 nl3Var2 = iz1.d;
        as2 as2Var2 = pz1.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.ORIENTATION, m36Var, nl3Var2, l66Var, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        return new jz1(as2Var, as2Var2);
    }
}
