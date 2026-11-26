package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fr0 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        hr0 hr0Var = (hr0) xq3Var;
        zw2 zw2Var = hr0Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = gr0.e;
        xr2 xr2Var = gr0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "bottom", s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        zw2 zw2Var2 = hr0Var.b;
        l66 l66Var2 = gr0.f;
        xr2 xr2Var2 = gr0.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, TtmlNode.LEFT, s36Var, nl3Var, l66Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        zw2 zw2Var3 = hr0Var.c;
        l66 l66Var3 = gr0.g;
        xr2 xr2Var3 = gr0.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, TtmlNode.RIGHT, s36Var, nl3Var, l66Var3, xr2Var3);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var3;
        }
        zw2 zw2Var4 = hr0Var.d;
        l66 l66Var4 = gr0.h;
        as2 as2Var = gr0.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "top", s36Var, nl3Var, l66Var4, as2Var);
        if (as2VarA4 != null) {
            as2Var = as2VarA4;
        }
        return new cr0(as2VarA, as2VarA2, as2VarA3, as2Var);
    }
}
