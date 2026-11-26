package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q7 {
    public final int a;
    public final boolean b;

    public q7(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q7)) {
            return false;
        }
        q7 q7Var = (q7) obj;
        return this.a == q7Var.a && this.b == q7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationNetworkConfiguration(usagePercent=" + this.a + ", disabled=" + this.b + ")";
    }
}
