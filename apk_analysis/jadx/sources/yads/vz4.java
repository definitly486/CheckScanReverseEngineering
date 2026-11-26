package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vz4 implements nr2 {
    public final a13 a;
    public final Object b;
    public final long c;

    public vz4(a13 a13Var, Object obj, long j) {
        this.a = a13Var;
        this.b = obj;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vz4)) {
            return false;
        }
        vz4 vz4Var = (vz4) obj;
        return defpackage.aa4.e(this.a, vz4Var.a) && defpackage.aa4.e(this.b, vz4Var.b) && this.c == vz4Var.c;
    }

    public final int hashCode() {
        a13 a13Var = this.a;
        int iHashCode = (a13Var == null ? 0 : a13Var.hashCode()) * 31;
        Object obj = this.b;
        return Long.hashCode(this.c) + ((iHashCode + (obj != null ? obj.hashCode() : 0)) * 31);
    }

    public final String toString() {
        a13 a13Var = this.a;
        Object obj = this.b;
        long j = this.c;
        StringBuilder sb = new StringBuilder("CachedItem(params=");
        sb.append(a13Var);
        sb.append(", item=");
        sb.append(obj);
        sb.append(", expiresAtTimestampMillis=");
        return defpackage.k2.b(j, ")", sb);
    }
}
