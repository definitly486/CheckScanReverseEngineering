package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dv0 implements qv5 {
    public static av0 a(ys4 ys4Var, fv0 fv0Var, JSONObject jSONObject) {
        zw2 zw2Var = fv0Var.a;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = ev0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var, jSONObject, "animated", o36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        as2 as2VarA2 = qq3.a(ys4Var, fv0Var.b, jSONObject, TtmlNode.ATTR_ID, w36.c);
        zw2 zw2Var2 = fv0Var.c;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        xr2 xr2Var = ev0.b;
        as2 as2VarA3 = qq3.a(ys4Var, zw2Var2, jSONObject, "item_count", s36Var, nl3Var2, xr2Var);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var;
        }
        zw2 zw2Var3 = fv0Var.d;
        xr2 xr2Var2 = ev0.c;
        as2 as2VarA4 = qq3.a(ys4Var, zw2Var3, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, s36Var, nl3Var2, xr2Var2);
        if (as2VarA4 == null) {
            as2VarA4 = xr2Var2;
        }
        zw2 zw2Var4 = fv0Var.e;
        m36 m36Var = ev0.e;
        nl3 nl3Var3 = zu0.d;
        xr2 xr2Var3 = ev0.d;
        as2 as2VarA5 = qq3.a(ys4Var, zw2Var4, jSONObject, "overflow", m36Var, nl3Var3, xr2Var3);
        return new av0(as2Var, as2VarA2, as2VarA3, as2VarA4, as2VarA5 == null ? xr2Var3 : as2VarA5);
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a(ys4Var, (fv0) xq3Var, jSONObject);
    }
}
