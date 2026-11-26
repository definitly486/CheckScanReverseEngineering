package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h62 implements qv5 {
    public final tq3 a;

    public h62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        v62 v62Var = (v62) xq3Var;
        zw2 zw2Var = v62Var.a;
        tq3 tq3Var = this.a;
        br0 br0Var = (br0) qq3.a(ys4Var, zw2Var, jSONObject, TtmlNode.TAG_DIV, tq3Var.u9, tq3Var.s9);
        as2 as2VarA = qq3.a(ys4Var, v62Var.b, jSONObject, TJAdUnitConstants.String.TITLE, w36.c);
        zw2 zw2Var2 = v62Var.c;
        tq3 tq3Var2 = this.a;
        return new t52(br0Var, as2VarA, (xr0) qq3.b(ys4Var, zw2Var2, jSONObject, "title_click_action", tq3Var2.m1, tq3Var2.k1));
    }
}
