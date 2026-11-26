package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class x82 implements ln0 {
    public final tq3 a;

    public x82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u72 u72Var = (u72) wq3.c(ys4Var, jSONObject, "accessibility", this.a.w8);
        m36 m36Var = a92.g;
        nl3 nl3Var = d82.d;
        xr2 xr2Var = a92.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alignment_vertical", m36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.HEIGHT, this.a.v3);
        if (af1Var == null) {
            af1Var = a92.b;
        }
        af1 af1Var2 = af1Var;
        m36 m36Var2 = a92.h;
        nl3 nl3Var2 = w72.d;
        xr2 xr2Var2 = a92.c;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "indexing_direction", m36Var2, nl3Var2, l66Var, xr2Var2);
        as2 as2Var2 = as2VarA2 == null ? xr2Var2 : as2VarA2;
        o36 o36Var = w36.a;
        nl3 nl3Var3 = bt4.c;
        xr2 xr2Var3 = a92.d;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "preload_required", o36Var, nl3Var3, l66Var, xr2Var3);
        as2 as2Var3 = as2VarA3 == null ? xr2Var3 : as2VarA3;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, TtmlNode.START, w36.b, bt4.e, a92.j);
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "tint_color", w36.f, bt4.a);
        m36 m36Var3 = a92.i;
        nl3 nl3Var4 = y41.d;
        as2 as2Var4 = a92.e;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "tint_mode", m36Var3, nl3Var4, l66Var, as2Var4);
        if (as2VarA6 != null) {
            as2Var4 = as2VarA6;
        }
        as2 as2VarA7 = oq3.a(ys4Var, jSONObject, "url", w36.e, bt4.b, l66Var);
        af1 af1Var3 = (af1) wq3.c(ys4Var, jSONObject, TJAdUnitConstants.String.WIDTH, this.a.v3);
        if (af1Var3 == null) {
            af1Var3 = a92.f;
        }
        return new x72(u72Var, as2Var, af1Var2, as2Var2, as2Var3, as2VarA4, as2VarA5, as2Var4, as2VarA7, af1Var3);
    }
}
