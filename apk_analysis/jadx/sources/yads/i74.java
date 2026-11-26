package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class i74 {
    public final String a;
    public final List b;
    public final long c;

    public i74(String str, List list, long j) {
        this.a = str;
        this.b = list;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i74)) {
            return false;
        }
        i74 i74Var = (i74) obj;
        return defpackage.aa4.e(this.a, i74Var.a) && defpackage.aa4.e(this.b, i74Var.b) && this.c == i74Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + defpackage.e2.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.a;
        List list = this.b;
        long j = this.c;
        StringBuilder sb = new StringBuilder("MediationPrefetchAdUnitSettings(adUnitId=");
        sb.append(str);
        sb.append(", networks=");
        sb.append(list);
        sb.append(", loadTimeoutMillis=");
        return defpackage.k2.b(j, ")", sb);
    }
}
