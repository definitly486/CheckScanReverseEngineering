package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zc1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = cd1.g;
        xr2 xr2Var = cd1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "bottom", s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TtmlNode.END, s36Var, nl3Var, cd1.h, (as2) null);
        l66 l66Var2 = cd1.i;
        xr2 xr2Var2 = cd1.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, TtmlNode.LEFT, s36Var, nl3Var, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA3 == null ? xr2Var2 : as2VarA3;
        l66 l66Var3 = cd1.j;
        xr2 xr2Var3 = cd1.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, TtmlNode.RIGHT, s36Var, nl3Var, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA4 == null ? xr2Var3 : as2VarA4;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, TtmlNode.START, s36Var, nl3Var, cd1.k, (as2) null);
        l66 l66Var4 = cd1.l;
        xr2 xr2Var4 = cd1.d;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "top", s36Var, nl3Var, l66Var4, xr2Var4);
        as2 as2Var4 = as2VarA6 == null ? xr2Var4 : as2VarA6;
        m36 m36Var = cd1.f;
        nl3 nl3Var2 = g12.d;
        xr2 xr2Var5 = cd1.e;
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "unit", m36Var, nl3Var2, uq3.a, xr2Var5);
        return new yc1(as2Var, as2VarA2, as2Var2, as2Var3, as2VarA5, as2Var4, as2VarA7 == null ? xr2Var5 : as2VarA7);
    }
}
