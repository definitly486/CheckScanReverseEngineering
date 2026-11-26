package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yz1 implements ln0 {
    public final tq3 a;

    public yz1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = b02.d;
        as2 as2Var = b02.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var2 = b02.e;
        xr2 xr2Var = b02.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "blur", s36Var, nl3Var2, l66Var2, xr2Var);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var;
        }
        p36 p36Var = w36.f;
        nl3 nl3Var3 = bt4.a;
        as2 as2Var2 = b02.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var3, uq3.a, as2Var2);
        if (as2VarA3 != null) {
            as2Var2 = as2VarA3;
        }
        return new xz1(as2Var, as2VarA2, as2Var2, (nv1) wq3.a(ys4Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, this.a.R5));
    }
}
