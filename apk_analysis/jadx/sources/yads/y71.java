package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y71 implements qv5 {
    public final tq3 a;

    public y71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final v71 a(ys4 ys4Var, a81 a81Var, JSONObject jSONObject) {
        zw2 zw2Var = a81Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "cancel_actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = a81Var.b;
        m36 m36Var = z71.e;
        nl3 nl3Var = m11.d;
        xr2 xr2Var = z71.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "direction", m36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = a81Var.c;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, z71.g);
        zw2 zw2Var4 = a81Var.d;
        tq3 tq3Var2 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "end_actions", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var5 = a81Var.e;
        p36 p36Var = w36.f;
        nl3 nl3Var3 = bt4.a;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var5, jSONObject, "end_value", p36Var, nl3Var3);
        String str = (String) qq3.a(a81Var.f, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var6 = a81Var.g;
        m36 m36Var2 = z71.f;
        nl3 nl3Var4 = o11.d;
        xr2 xr2Var2 = z71.b;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, "interpolator", m36Var2, nl3Var4, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        zw2 zw2Var7 = a81Var.h;
        tq3 tq3Var3 = this.a;
        x91 x91Var = (x91) qq3.b(ys4Var, zw2Var7, jSONObject, "repeat_count", tq3Var3.x2, tq3Var3.v2);
        if (x91Var == null) {
            x91Var = z71.c;
        }
        zw2 zw2Var8 = a81Var.i;
        l66 l66Var = z71.h;
        as2 as2Var3 = z71.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var8, jSONObject, "start_delay", s36Var, nl3Var2, l66Var, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        return new v71(listC, as2Var, as2VarA2, listC2, as2VarA3, str, as2Var2, x91Var, as2Var3, qq3.b(ys4Var, a81Var.j, jSONObject, "start_value", p36Var, nl3Var3), (String) qq3.a(a81Var.k, jSONObject, "variable_name"));
    }
}
