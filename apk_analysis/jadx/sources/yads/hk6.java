package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hk6 implements jk6 {
    public final ub4 a;

    public hk6(ub4 ub4Var) {
        this.a = ub4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hk6) && defpackage.aa4.e(this.a, ((hk6) obj).a);
    }

    public final int hashCode() {
        ub4 ub4Var = this.a;
        if (ub4Var == null) {
            return 0;
        }
        return ub4Var.hashCode();
    }

    public final String toString() {
        return "Loading(preloadingListener=" + this.a + ")";
    }
}
