package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class vs4 {
    public final ArrayList a;
    public final String b;
    public int c;

    public vs4(String str, ArrayList arrayList) {
        this.a = arrayList;
        this.b = str;
    }

    public final boolean a() {
        return this.c >= this.a.size();
    }

    public final rz5 b() {
        ArrayList arrayList = this.a;
        int i = this.c;
        this.c = i + 1;
        return (rz5) arrayList.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vs4)) {
            return false;
        }
        vs4 vs4Var = (vs4) obj;
        return defpackage.aa4.e(this.a, vs4Var.a) && defpackage.aa4.e(this.b, vs4Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ParsingState(tokens=" + this.a + ", rawExpr=" + this.b + ")";
    }
}
