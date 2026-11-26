package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cv0 implements kv5 {
    public static fv0 a(ys4 ys4Var, fv0 fv0Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        o36 o36Var = w36.a;
        zw2 zw2Var = fv0Var != null ? fv0Var.a : null;
        nl3 nl3Var = bt4.c;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "animated", o36Var, zD, zw2Var, nl3Var, l66Var);
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, w36.c, zD, fv0Var != null ? fv0Var.b : null);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = fv0Var != null ? fv0Var.c : null;
        nl3 nl3Var2 = bt4.e;
        return new fv0(zw2VarB, zw2VarA, pq3.b(tr4VarB, jSONObject, "item_count", s36Var, zD, zw2Var2, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, s36Var, zD, fv0Var != null ? fv0Var.d : null, nl3Var2, l66Var), pq3.b(tr4VarB, jSONObject, "overflow", ev0.e, zD, fv0Var != null ? fv0Var.e : null, zu0.d, l66Var));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
