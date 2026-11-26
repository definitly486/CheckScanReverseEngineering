package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bd1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        dd1 dd1Var = (dd1) xq3Var;
        zw2 zw2Var = dd1Var.a;
        s36 s36Var = w36.b;
        nl3 nl3Var = bt4.e;
        l66 l66Var = cd1.g;
        xr2 xr2Var = cd1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "bottom", s36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarB = qq3.b(ys4Var, dd1Var.b, jSONObject, TtmlNode.END, s36Var, nl3Var, cd1.h);
        zw2 zw2Var2 = dd1Var.c;
        l66 l66Var2 = cd1.i;
        xr2 xr2Var2 = cd1.b;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var2, jSONObject, TtmlNode.LEFT, s36Var, nl3Var, l66Var2, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        zw2 zw2Var3 = dd1Var.d;
        l66 l66Var3 = cd1.j;
        xr2 xr2Var3 = cd1.c;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var3, jSONObject, TtmlNode.RIGHT, s36Var, nl3Var, l66Var3, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        as2 as2VarB2 = qq3.b(ys4Var, dd1Var.e, jSONObject, TtmlNode.START, s36Var, nl3Var, cd1.k);
        zw2 zw2Var4 = dd1Var.f;
        l66 l66Var4 = cd1.l;
        xr2 xr2Var4 = cd1.d;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var4, jSONObject, "top", s36Var, nl3Var, l66Var4, xr2Var4);
        as2 as2Var4 = as2VarA4 == null ? xr2Var4 : as2VarA4;
        zw2 zw2Var5 = dd1Var.g;
        m36 m36Var = cd1.f;
        nl3 nl3Var2 = g12.d;
        xr2 xr2Var5 = cd1.e;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var5, jSONObject, "unit", m36Var, nl3Var2, xr2Var5);
        return new yc1(as2Var, as2VarB, as2Var2, as2Var3, as2VarB2, as2Var4, as2VarA5 == null ? xr2Var5 : as2VarA5);
    }
}
