package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y82 implements kv5 {
    public final tq3 a;

    public y82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        zw2 zw2VarB = pq3.b(tr4VarB, jSONObject, "accessibility", zD, (zw2) null, this.a.x8);
        m36 m36Var = a92.g;
        nl3 nl3Var = d82.d;
        l66 l66Var = uq3.a;
        return new db2(zw2VarB, pq3.b(tr4VarB, jSONObject, "alignment_vertical", m36Var, zD, null, nl3Var, l66Var), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.HEIGHT, zD, (zw2) null, this.a.w3), pq3.b(tr4VarB, jSONObject, "indexing_direction", a92.h, zD, null, w72.d, l66Var), pq3.b(tr4VarB, jSONObject, "preload_required", w36.a, zD, null, bt4.c, l66Var), pq3.a(tr4VarB, jSONObject, TtmlNode.START, w36.b, zD, null, bt4.e, a92.j), pq3.b(tr4VarB, jSONObject, "tint_color", w36.f, zD, null, bt4.a, l66Var), pq3.b(tr4VarB, jSONObject, "tint_mode", a92.i, zD, null, y41.d, l66Var), pq3.a(tr4VarB, jSONObject, "url", w36.e, zD, null, bt4.b, l66Var), pq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.WIDTH, zD, (zw2) null, this.a.w3));
    }
}
