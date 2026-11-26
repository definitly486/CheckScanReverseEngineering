package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p66 extends u66 {
    public final String b;
    public JSONObject c;

    public p66(String str, JSONObject jSONObject) {
        this.b = str;
        this.c = jSONObject;
    }

    public final void a(JSONObject jSONObject) {
        b(jSONObject);
    }

    public final void b(JSONObject jSONObject) {
        if (defpackage.aa4.e(this.c, jSONObject)) {
            return;
        }
        this.c = jSONObject;
        a((u66) this);
    }

    public final JSONObject c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
