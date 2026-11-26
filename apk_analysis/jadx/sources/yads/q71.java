package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q71 implements qv5 {
    public final tq3 a;

    public q71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        s71 s71Var = (s71) xq3Var;
        zw2 zw2Var = s71Var.a;
        tq3 tq3Var = this.a;
        br0 br0Var = (br0) qq3.a(ys4Var, zw2Var, jSONObject, TtmlNode.TAG_DIV, tq3Var.u9, tq3Var.s9);
        as2 as2VarB = qq3.b(ys4Var, s71Var.b, jSONObject, TtmlNode.ATTR_ID, w36.c);
        zw2 zw2Var2 = s71Var.c;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = r71.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "selector", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new i71(br0Var, as2VarB, as2Var);
    }
}
