package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pf1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        qf1 qf1Var = (qf1) xq3Var;
        zw2 zw2Var = qf1Var.a;
        u36 u36Var = w36.c;
        return new gf1(qq3.b(ys4Var, zw2Var, jSONObject, "down", u36Var), qq3.b(ys4Var, qf1Var.b, jSONObject, "forward", u36Var), qq3.b(ys4Var, qf1Var.c, jSONObject, TtmlNode.LEFT, u36Var), qq3.b(ys4Var, qf1Var.d, jSONObject, TtmlNode.RIGHT, u36Var), qq3.b(ys4Var, qf1Var.e, jSONObject, "up", u36Var));
    }
}
