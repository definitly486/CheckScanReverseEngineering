package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p11 implements ln0 {
    public final tq3 a;

    public p11(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = s11.g;
        xr2 xr2Var = s11.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "end_value", r36Var, nl3Var2);
        m36 m36Var = s11.e;
        nl3 nl3Var3 = o11.d;
        as2 as2Var2 = s11.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var, nl3Var3, l66Var2, as2Var2);
        if (as2VarA3 != null) {
            as2Var2 = as2VarA3;
        }
        List listD = wq3.d(ys4Var, jSONObject, FirebaseAnalytics.Param.ITEMS, this.a.q1);
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "name", s11.f, j11.d, l66Var2);
        x91 x91Var = (x91) wq3.c(ys4Var, jSONObject, "repeat", this.a.v2);
        if (x91Var == null) {
            x91Var = s11.c;
        }
        x91 x91Var2 = x91Var;
        l66 l66Var3 = s11.h;
        as2 as2Var3 = s11.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var, l66Var3, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        return new k11(as2Var, as2VarA2, as2Var2, listD, as2VarA4, x91Var2, as2Var3, oq3.a(ys4Var, jSONObject, "start_value", r36Var, nl3Var2));
    }
}
