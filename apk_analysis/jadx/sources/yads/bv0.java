package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class bv0 implements ln0 {
    public static av0 b(ys4 ys4Var, JSONObject jSONObject) {
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = ev0.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "animated", o36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c);
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        xr2 xr2Var2 = ev0.b;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "item_count", s36Var, nl3Var2, l66Var, xr2Var2);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var2;
        }
        xr2 xr2Var3 = ev0.c;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, s36Var, nl3Var2, l66Var, xr2Var3);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var3;
        }
        m36 m36Var = ev0.e;
        nl3 nl3Var3 = zu0.d;
        xr2 xr2Var4 = ev0.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "overflow", m36Var, nl3Var3, l66Var, xr2Var4);
        return new av0(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5 == null ? xr2Var4 : as2VarA5);
    }

    @Override // yads.ln0
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, JSONObject jSONObject) {
        return b(ys4Var, jSONObject);
    }
}
