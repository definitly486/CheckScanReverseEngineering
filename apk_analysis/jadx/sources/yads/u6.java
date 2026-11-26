package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class u6 {
    public final long a;
    public final v6 b;
    public final w6 c;

    public u6(long j, v6 v6Var, w6 w6Var) {
        this.a = j;
        this.b = v6Var;
        this.c = w6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u6)) {
            return false;
        }
        u6 u6Var = (u6) obj;
        return this.a == u6Var.a && defpackage.aa4.e(this.b, u6Var.b) && this.c == u6Var.c;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        v6 v6Var = this.b;
        int iHashCode2 = (iHashCode + (v6Var == null ? 0 : v6Var.hashCode())) * 31;
        w6 w6Var = this.c;
        return iHashCode2 + (w6Var != null ? w6Var.hashCode() : 0);
    }

    public final String toString() {
        return "AdPodItem(duration=" + this.a + ", skip=" + this.b + ", transitionPolicy=" + this.c + ")";
    }
}
