package yads;

import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class ar5 extends kr5 {
    public final String a;
    public final JSONArray b;

    public ar5(String str, JSONArray jSONArray) {
        this.a = str;
        this.b = jSONArray;
    }

    @Override // yads.kr5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ar5)) {
            return false;
        }
        ar5 ar5Var = (ar5) obj;
        return defpackage.aa4.e(this.a, ar5Var.a) && defpackage.aa4.e(this.b, ar5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ArrayStoredValue(name=" + this.a + ", value=" + this.b + ")";
    }
}
