package yads;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ia1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        ja1 ja1Var = (ja1) xq3Var;
        return new fa1((String) qq3.a(ja1Var.b, jSONObject, "raw_text_variable"), qq3.b(ys4Var, ja1Var.a, jSONObject, CommonUrlParts.LOCALE, w36.c));
    }
}
