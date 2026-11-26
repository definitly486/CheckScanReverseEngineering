package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dr0 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = gr0.e;
        xr2 xr2Var = gr0.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "bottom", s36Var, nl3Var, l66Var, xr2Var);
        if (as2VarA == null) {
            as2VarA = xr2Var;
        }
        l66 l66Var2 = gr0.f;
        xr2 xr2Var2 = gr0.b;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TtmlNode.LEFT, s36Var, nl3Var, l66Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        l66 l66Var3 = gr0.g;
        xr2 xr2Var3 = gr0.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, TtmlNode.RIGHT, s36Var, nl3Var, l66Var3, xr2Var3);
        as2 as2Var = as2VarA3 == null ? xr2Var3 : as2VarA3;
        l66 l66Var4 = gr0.h;
        as2 as2Var2 = gr0.d;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "top", s36Var, nl3Var, l66Var4, as2Var2);
        if (as2VarA4 != null) {
            as2Var2 = as2VarA4;
        }
        return new cr0(as2VarA, as2VarA2, as2Var, as2Var2);
    }
}
