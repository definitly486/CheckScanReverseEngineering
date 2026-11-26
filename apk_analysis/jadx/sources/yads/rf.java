package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class rf {
    public final String a;
    public final String b;

    public rf(sf sfVar, JSONObject jSONObject) {
        this.a = sfVar.b;
        this.b = jSONObject.toString();
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rf)) {
            return false;
        }
        rf rfVar = (rf) obj;
        return defpackage.aa4.e(rfVar.a, this.a) && defpackage.aa4.e(rfVar.b, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
