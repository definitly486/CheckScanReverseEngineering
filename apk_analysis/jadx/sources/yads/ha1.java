package yads;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ha1 implements kv5 {
    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        return new ja1(pq3.b(tr4VarB, jSONObject, CommonUrlParts.LOCALE, w36.c, zD, (zw2) null), pq3.a(tr4VarB, jSONObject, "raw_text_variable", zD, null));
    }
}
