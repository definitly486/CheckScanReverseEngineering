package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class m42 implements ln0 {
    public final tq3 a;

    public m42(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var, l66Var);
        s42 s42Var = (s42) wq3.c(ys4Var, jSONObject, "style", this.a.A7);
        if (s42Var == null) {
            s42Var = p42.a;
        }
        m36 m36Var = p42.d;
        nl3 nl3Var2 = g12.d;
        as2 as2Var = p42.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var2, l66Var, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        l66 l66Var2 = p42.e;
        as2 as2Var2 = p42.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, r36Var, nl3Var3, l66Var2, as2Var2);
        if (as2VarA3 != null) {
            as2Var2 = as2VarA3;
        }
        return new l42(as2VarA, s42Var, as2Var, as2Var2);
    }
}
