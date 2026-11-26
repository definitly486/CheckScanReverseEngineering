package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hq1 implements kv5 {
    public final tq3 a;

    public hq1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final kq1 a(ys4 ys4Var, kq1 kq1Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarC = pq3.c(tr4VarB, jSONObject, "cancel_actions", zD, kq1Var != null ? kq1Var.a : null, this.a.l1);
        m36 m36Var = jq1.e;
        zw2 zw2Var = kq1Var != null ? kq1Var.b : null;
        nl3 nl3Var = m11.d;
        l66 l66Var = uq3.a;
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "direction", m36Var, zD, zw2Var, nl3Var, l66Var);
        s36 s36Var = w36.b;
        zw2 zw2Var2 = kq1Var != null ? kq1Var.c : null;
        nl3 nl3Var2 = bt4.e;
        zw2 zw2VarA = pq3.a(tr4VarB, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, zD, zw2Var2, nl3Var2, jq1.g);
        zw2 zw2VarC2 = pq3.c(tr4VarB, jSONObject, "end_actions", zD, kq1Var != null ? kq1Var.d : null, this.a.l1);
        r36 r36Var = w36.d;
        zw2 zw2Var3 = kq1Var != null ? kq1Var.e : null;
        nl3 nl3Var3 = bt4.d;
        return new kq1(zw2VarC, zw2VarB, zw2VarA, zw2VarC2, pq3.a(tr4VarB, jSONObject, "end_value", r36Var, zD, zw2Var3, nl3Var3, l66Var), pq3.a(tr4VarB, jSONObject, TtmlNode.ATTR_ID, zD, kq1Var != null ? kq1Var.f : null), pq3.b(tr4VarB, jSONObject, "interpolator", jq1.f, zD, kq1Var != null ? kq1Var.g : null, o11.d, l66Var), pq3.b(tr4VarB, jSONObject, "repeat_count", zD, kq1Var != null ? kq1Var.h : null, this.a.w2), pq3.b(tr4VarB, jSONObject, "start_delay", s36Var, zD, kq1Var != null ? kq1Var.i : null, nl3Var2, jq1.h), pq3.b(tr4VarB, jSONObject, "start_value", r36Var, zD, kq1Var != null ? kq1Var.j : null, nl3Var3, l66Var), pq3.a(tr4VarB, jSONObject, "variable_name", zD, kq1Var != null ? kq1Var.k : null));
    }

    @Override // yads.kv5, yads.ln0
    public final /* bridge */ /* synthetic */ xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        return a(ys4Var, null, jSONObject);
    }
}
