package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class k22 implements qv5 {
    public final tq3 a;

    public k22(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        l22 l22Var = (l22) xq3Var;
        zw2 zw2Var = l22Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        as2 as2VarB = qq3.b(ys4Var, zw2Var, jSONObject, TtmlNode.END, s36Var, nl3Var);
        zw2 zw2Var2 = l22Var.b;
        tq3 tq3Var = this.a;
        yc1 yc1Var = (yc1) qq3.b(ys4Var, zw2Var2, jSONObject, "margins", tq3Var.Z2, tq3Var.X2);
        as2 as2VarB2 = qq3.b(ys4Var, l22Var.c, jSONObject, TtmlNode.START, s36Var, nl3Var);
        zw2 zw2Var3 = l22Var.d;
        tq3 tq3Var2 = this.a;
        tc1 tc1Var = (tc1) qq3.b(ys4Var, zw2Var3, jSONObject, "track_active_style", tq3Var2.W2, tq3Var2.U2);
        zw2 zw2Var4 = l22Var.e;
        tq3 tq3Var3 = this.a;
        return new v12(as2VarB, yc1Var, as2VarB2, tc1Var, (tc1) qq3.b(ys4Var, zw2Var4, jSONObject, "track_inactive_style", tq3Var3.W2, tq3Var3.U2));
    }
}
