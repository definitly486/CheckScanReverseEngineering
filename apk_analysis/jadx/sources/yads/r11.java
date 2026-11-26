package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r11 implements qv5 {
    public final tq3 a;

    public r11(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        t11 t11Var = (t11) xq3Var;
        zw2 zw2Var = t11Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = s11.g;
        xr2 xr2Var = s11.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var2 = t11Var.b;
        r36 r36Var = w36.d;
        nl3 nl3Var2 = bt4.d;
        as2 as2VarB = qq3.b(ys4Var, zw2Var2, jSONObject, "end_value", r36Var, nl3Var2);
        zw2 zw2Var3 = t11Var.c;
        m36 m36Var = s11.e;
        nl3 nl3Var3 = o11.d;
        as2 as2Var2 = s11.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, "interpolator", m36Var, nl3Var3, as2Var2);
        if (as2VarA2 != null) {
            as2Var2 = as2VarA2;
        }
        zw2 zw2Var4 = t11Var.d;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, FirebaseAnalytics.Param.ITEMS, tq3Var.s1, tq3Var.q1);
        as2 as2VarA3 = qq3.a(ys4Var, t11Var.e, jSONObject, "name", s11.f, j11.d);
        zw2 zw2Var5 = t11Var.f;
        tq3 tq3Var2 = this.a;
        x91 x91Var = (x91) qq3.b(ys4Var, zw2Var5, jSONObject, "repeat", tq3Var2.x2, tq3Var2.v2);
        if (x91Var == null) {
            x91Var = s11.c;
        }
        zw2 zw2Var6 = t11Var.g;
        l66 l66Var2 = s11.h;
        xr2 xr2Var2 = s11.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, "start_delay", s36Var, nl3Var, l66Var2, xr2Var2);
        return new k11(as2Var, as2VarB, as2Var2, listC, as2VarA3, x91Var, as2VarA4 == null ? xr2Var2 : as2VarA4, qq3.b(ys4Var, t11Var.h, jSONObject, "start_value", r36Var, nl3Var2));
    }
}
