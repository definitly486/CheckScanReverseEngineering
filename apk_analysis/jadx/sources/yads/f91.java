package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f91 implements ln0 {
    public final tq3 a;

    public f91(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        yc1 yc1Var = (yc1) wq3.c(ys4Var, jSONObject, "margins", this.a.X2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = i91.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "show_at_end", o36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        xr2 xr2Var2 = i91.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "show_at_start", o36Var, nl3Var, l66Var, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        xr2 xr2Var3 = i91.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "show_between", o36Var, nl3Var, l66Var, xr2Var3);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var3;
        }
        return new i81(yc1Var, as2VarA, as2VarA2, as2VarA3, (tc1) wq3.a(ys4Var, jSONObject, "style", this.a.U2));
    }
}
