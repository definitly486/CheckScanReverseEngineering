package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gd1 {
    public final String a;
    public final JSONObject b;

    public gd1(String str, JSONObject jSONObject) {
        this.a = str;
        this.b = jSONObject;
    }

    public final boolean a(gd1 gd1Var) {
        return gd1Var != null && defpackage.aa4.e(this.a, gd1Var.a) && defpackage.aa4.e(this.b, gd1Var.b);
    }
}
