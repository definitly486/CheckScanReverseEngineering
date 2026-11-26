package yads;

import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class m66 extends u66 {
    public final String b;
    public JSONArray c;

    public m66(String str, JSONArray jSONArray) {
        this.b = str;
        this.c = jSONArray;
    }

    public final void a(JSONArray jSONArray) {
        b(jSONArray);
    }

    public final void b(JSONArray jSONArray) {
        if (defpackage.aa4.e(this.c, jSONArray)) {
            return;
        }
        this.c = jSONArray;
        a((u66) this);
    }

    public final JSONArray c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
