package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lb2 implements qv5 {
    public final tq3 a;

    public lb2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        nb2 nb2Var = (nb2) xq3Var;
        zw2 zw2Var = nb2Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = mb2.b;
        xr2 xr2Var = mb2.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var2 = nb2Var.b;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var2, jSONObject, "end_actions", tq3Var.m1, tq3Var.k1);
        String str = (String) qq3.a(nb2Var.c, jSONObject, TtmlNode.ATTR_ID);
        zw2 zw2Var3 = nb2Var.d;
        tq3 tq3Var2 = this.a;
        return new gb2(as2VarA, listC, str, qq3.c(ys4Var, zw2Var3, jSONObject, "tick_actions", tq3Var2.m1, tq3Var2.k1), qq3.b(ys4Var, nb2Var.e, jSONObject, "tick_interval", s36Var, nl3Var, mb2.c), (String) qq3.a(ys4Var, nb2Var.f, jSONObject, "value_variable"));
    }
}
