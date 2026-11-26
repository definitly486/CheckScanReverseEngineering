package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j45 implements k45 {
    public final String b;
    public final JSONObject c;

    public j45(String str, JSONObject jSONObject) {
        this.b = str;
        this.c = jSONObject;
    }

    @Override // yads.k45
    public final String a() {
        return this.b;
    }

    @Override // yads.k45
    public final JSONObject c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j45)) {
            return false;
        }
        j45 j45Var = (j45) obj;
        return defpackage.aa4.e(this.b, j45Var.b) && defpackage.aa4.e(this.c, j45Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "Ready(id=" + this.b + ", data=" + this.c + ")";
    }
}
