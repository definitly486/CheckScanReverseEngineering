package yads;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ga1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new fa1((String) wq3.a("raw_text_variable", jSONObject), oq3.b(ys4Var, jSONObject, CommonUrlParts.LOCALE, w36.c));
    }
}
