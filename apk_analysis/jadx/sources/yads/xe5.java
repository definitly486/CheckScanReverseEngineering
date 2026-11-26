package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xe5 implements ze5 {
    public final hi6 a;
    public final p50 b;

    public xe5(hi6 hi6Var, p50 p50Var) {
        this.a = hi6Var;
        this.b = p50Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xe5)) {
            return false;
        }
        xe5 xe5Var = (xe5) obj;
        return defpackage.aa4.e(this.a, xe5Var.a) && this.b == xe5Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Failure(error=" + this.a + ", configurationSource=" + this.b + ")";
    }
}
