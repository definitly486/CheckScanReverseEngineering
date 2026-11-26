package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class v6 {
    public final fm5 a;
    public final hm5 b;
    public final long c;

    public v6(fm5 fm5Var, hm5 hm5Var, long j) {
        this.a = fm5Var;
        this.b = hm5Var;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v6)) {
            return false;
        }
        v6 v6Var = (v6) obj;
        return this.a == v6Var.a && this.b == v6Var.b && this.c == v6Var.c;
    }

    public final int hashCode() {
        fm5 fm5Var = this.a;
        int iHashCode = (fm5Var == null ? 0 : fm5Var.hashCode()) * 31;
        hm5 hm5Var = this.b;
        return Long.hashCode(this.c) + ((iHashCode + (hm5Var != null ? hm5Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        fm5 fm5Var = this.a;
        hm5 hm5Var = this.b;
        long j = this.c;
        StringBuilder sb = new StringBuilder("AdPodSkip(transitionStrategy=");
        sb.append(fm5Var);
        sb.append(", visibility=");
        sb.append(hm5Var);
        sb.append(", delay=");
        return defpackage.k2.b(j, ")", sb);
    }
}
