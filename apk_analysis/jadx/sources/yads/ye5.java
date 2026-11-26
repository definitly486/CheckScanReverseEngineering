package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ye5 implements ze5 {
    public final fe5 a;
    public final p50 b;

    public ye5(fe5 fe5Var, p50 p50Var) {
        this.a = fe5Var;
        this.b = p50Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ye5)) {
            return false;
        }
        ye5 ye5Var = (ye5) obj;
        return defpackage.aa4.e(this.a, ye5Var.a) && this.b == ye5Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(sdkConfiguration=" + this.a + ", configurationSource=" + this.b + ")";
    }
}
