package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dr5 extends kr5 {
    public final String a;
    public final JSONObject b;

    public dr5(String str, JSONObject jSONObject) {
        this.a = str;
        this.b = jSONObject;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dr5)) {
            return false;
        }
        dr5 dr5Var = (dr5) obj;
        return defpackage.aa4.e(this.a, dr5Var.a) && defpackage.aa4.e(this.b, dr5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DictStoredValue(name=" + this.a + ", value=" + this.b + ")";
    }
}
