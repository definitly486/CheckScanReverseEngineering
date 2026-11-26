package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ch2 implements ln0 {
    public final tq3 a;

    public ch2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        return new ah2(oq3.a(ys4Var, jSONObject, "bitrate", w36.b, bt4.e), oq3.a(ys4Var, jSONObject, "mime_type", w36.c), (zg2) wq3.c(ys4Var, jSONObject, "resolution", this.a.g9), oq3.a(ys4Var, jSONObject, "url", w36.e, bt4.b, uq3.a));
    }
}
