package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ru0 implements ln0 {
    public final tq3 a;

    public ru0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        nc1 nc1Var = (nc1) wq3.c(ys4Var, jSONObject, "download_callbacks", this.a.R2);
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = uu0.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "is_enabled", o36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "log_id", w36.c);
        v36 v36Var = w36.e;
        nl3 nl3Var2 = bt4.b;
        return new xr0(nc1Var, as2Var, as2VarA2, oq3.a(ys4Var, jSONObject, "log_url", v36Var, nl3Var2), wq3.d(ys4Var, jSONObject, "menu_items", this.a.n1), (JSONObject) wq3.a(ys4Var, jSONObject, "payload"), oq3.a(ys4Var, jSONObject, "referer", v36Var, nl3Var2), (String) wq3.a(ys4Var, jSONObject, "scope_id"), oq3.a(ys4Var, jSONObject, TypedValues.AttributesType.S_TARGET, uu0.b, wr0.d), (ry0) wq3.c(ys4Var, jSONObject, "typed", this.a.b1), oq3.a(ys4Var, jSONObject, "url", v36Var, nl3Var2));
    }
}
