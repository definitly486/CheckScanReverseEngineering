package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bs0 implements qv5 {
    public final tq3 a;

    public bs0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final yr0 a(ys4 ys4Var, ds0 ds0Var, JSONObject jSONObject) {
        String str = (String) qq3.a(ds0Var.a, jSONObject, "animator_id");
        as2 as2VarB = qq3.b(ys4Var, ds0Var.b, jSONObject, "direction", cs0.a, m11.d);
        zw2 zw2Var = ds0Var.c;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        as2 as2VarB2 = qq3.b(ys4Var, zw2Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, cs0.c);
        zw2 zw2Var2 = ds0Var.d;
        tq3 tq3Var = this.a;
        oe2 oe2Var = (oe2) qq3.b(ys4Var, zw2Var2, jSONObject, "end_value", tq3Var.Z8, tq3Var.X8);
        as2 as2VarB3 = qq3.b(ys4Var, ds0Var.e, jSONObject, "interpolator", cs0.b, o11.d);
        zw2 zw2Var3 = ds0Var.f;
        tq3 tq3Var2 = this.a;
        x91 x91Var = (x91) qq3.b(ys4Var, zw2Var3, jSONObject, "repeat_count", tq3Var2.x2, tq3Var2.v2);
        as2 as2VarB4 = qq3.b(ys4Var, ds0Var.g, jSONObject, "start_delay", s36Var, nl3Var, cs0.d);
        zw2 zw2Var4 = ds0Var.h;
        tq3 tq3Var3 = this.a;
        return new yr0(str, as2VarB, as2VarB2, oe2Var, as2VarB3, x91Var, as2VarB4, (oe2) qq3.b(ys4Var, zw2Var4, jSONObject, "start_value", tq3Var3.Z8, tq3Var3.X8));
    }
}
