package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bc2 implements qv5 {
    public final tq3 a;

    public bc2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        yc2 yc2Var = (yc2) xq3Var;
        zw2 zw2Var = yc2Var.a;
        tq3 tq3Var = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var, jSONObject, "animation_in", tq3Var.s1, tq3Var.q1);
        zw2 zw2Var2 = yc2Var.b;
        tq3 tq3Var2 = this.a;
        k11 k11Var2 = (k11) qq3.b(ys4Var, zw2Var2, jSONObject, "animation_out", tq3Var2.s1, tq3Var2.q1);
        as2 as2VarB = qq3.b(ys4Var, yc2Var.c, jSONObject, "background_accessibility_description", w36.c);
        zw2 zw2Var3 = yc2Var.d;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = cc2.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var3, jSONObject, "close_by_tap_outside", o36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        zw2 zw2Var4 = yc2Var.e;
        tq3 tq3Var3 = this.a;
        br0 br0Var = (br0) qq3.a(ys4Var, zw2Var4, jSONObject, TtmlNode.TAG_DIV, tq3Var3.u9, tq3Var3.s9);
        zw2 zw2Var5 = yc2Var.f;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        l66 l66Var = cc2.e;
        xr2 xr2Var2 = cc2.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var5, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        String str = (String) qq3.a(yc2Var.g, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var6 = yc2Var.h;
        tq3 tq3Var4 = this.a;
        fc2 fc2Var = (fc2) qq3.b(ys4Var, zw2Var6, jSONObject, "mode", tq3Var4.N8, tq3Var4.L8);
        if (fc2Var == null) {
            fc2Var = cc2.c;
        }
        fc2 fc2Var2 = fc2Var;
        zw2 zw2Var7 = yc2Var.i;
        tq3 tq3Var5 = this.a;
        nv1 nv1Var = (nv1) qq3.b(ys4Var, zw2Var7, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, tq3Var5.T5, tq3Var5.R5);
        as2 as2VarA3 = qq3.a(ys4Var, yc2Var.j, jSONObject, "position", cc2.d, pb2.d);
        zw2 zw2Var8 = yc2Var.k;
        tq3 tq3Var6 = this.a;
        return new qb2(k11Var, k11Var2, as2VarB, as2Var, br0Var, as2Var2, str, fc2Var2, nv1Var, as2VarA3, qq3.c(ys4Var, zw2Var8, jSONObject, "tap_outside_actions", tq3Var6.m1, tq3Var6.k1));
    }
}
