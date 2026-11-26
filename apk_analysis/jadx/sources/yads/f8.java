package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class f8 {
    public final int a;
    public final boolean b;

    public f8(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f8)) {
            return false;
        }
        f8 f8Var = (f8) obj;
        return this.a == f8Var.a && this.b == f8Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdQualityVerifierNetworkConfiguration(usagePercent=" + this.a + ", disabled=" + this.b + ")";
    }
}
