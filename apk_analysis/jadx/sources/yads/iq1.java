package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class iq1 implements qv5 {
    public final tq3 a;

    public iq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final fq1 a(ys4 ys4Var, kq1 kq1Var, JSONObject jSONObject) {
        zw2 zw2Var = kq1Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "cancel_actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = kq1Var.b;
        m36 m36Var = jq1.e;
        nl3 nl3Var = m11.d;
        xr2 xr2Var = jq1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "direction", m36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var3 = kq1Var.c;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var3, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, jq1.g);
        zw2 zw2Var4 = kq1Var.d;
        tq3 tq3Var2 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "end_actions", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var5 = kq1Var.e;
        r36 r36Var = w36.d;
        nl3 nl3Var3 = bt4.d;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var5, jSONObject, "end_value", r36Var, nl3Var3);
        String str = (String) qq3.a(kq1Var.f, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var6 = kq1Var.g;
        m36 m36Var2 = jq1.f;
        nl3 nl3Var4 = o11.d;
        xr2 xr2Var2 = jq1.b;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var6, jSONObject, "interpolator", m36Var2, nl3Var4, xr2Var2);
        as2 as2Var2 = as2VarA4 == null ? xr2Var2 : as2VarA4;
        zw2 zw2Var7 = kq1Var.h;
        tq3 tq3Var3 = this.a;
        x91 x91Var = (x91) qq3.b(ys4Var, zw2Var7, jSONObject, "repeat_count", tq3Var3.x2, tq3Var3.v2);
        if (x91Var == null) {
            x91Var = jq1.c;
        }
        zw2 zw2Var8 = kq1Var.i;
        l66 l66Var = jq1.h;
        as2 as2Var3 = jq1.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var8, jSONObject, "start_delay", s36Var, nl3Var2, l66Var, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        return new fq1(listC, as2Var, as2VarA2, listC2, as2VarA3, str, as2Var2, x91Var, as2Var3, qq3.b(ys4Var, kq1Var.j, jSONObject, "start_value", r36Var, nl3Var3), (String) qq3.a(kq1Var.k, jSONObject, "variable_name"));
    }
}
