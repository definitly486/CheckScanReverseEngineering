package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class w54 {
    public static final String d = "com.yandex.mobile.ads.mediation";
    public final String a;
    public final s64 b;
    public final List c;

    public w54(String str, s64 s64Var, List list) {
        this.a = str;
        this.b = s64Var;
        this.c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w54)) {
            return false;
        }
        w54 w54Var = (w54) obj;
        return defpackage.aa4.e(this.a, w54Var.a) && this.b == w54Var.b && defpackage.aa4.e(this.c, w54Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        String str = this.a;
        s64 s64Var = this.b;
        List list = this.c;
        StringBuilder sb = new StringBuilder("MediationNetwork(name=");
        sb.append(str);
        sb.append(", id=");
        sb.append(s64Var);
        sb.append(", adapters=");
        return defpackage.bg.e(")", list, sb);
    }
}
