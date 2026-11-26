package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class g75 {
    public final String a;
    public final Map b;
    public final c c;

    public g75(String str, Map map, c cVar) {
        this.a = str;
        this.b = map;
        this.c = cVar;
        map.put("sdk_version", "8.2.0");
    }

    public final c a() {
        return this.c;
    }

    public final Map b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g75)) {
            return false;
        }
        g75 g75Var = (g75) obj;
        return defpackage.aa4.e(this.a, g75Var.a) && defpackage.aa4.e(this.b, g75Var.b) && defpackage.aa4.e(this.c, g75Var.c);
    }

    public final int hashCode() {
        int iC = defpackage.k.c(this.b, this.a.hashCode() * 31, 31);
        c cVar = this.c;
        return iC + (cVar == null ? 0 : cVar.hashCode());
    }

    public final String toString() {
        return "Report(eventName=" + this.a + ", data=" + this.b + ", abExperiments=" + this.c + ")";
    }

    public g75(e75 e75Var, Map map, c cVar) {
        this(e75Var.b, defpackage.n05.n(map), cVar);
    }
}
