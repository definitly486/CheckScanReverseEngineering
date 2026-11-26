package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ci5 {
    public final long a;
    public final long b;

    public ci5(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ci5.class == obj.getClass()) {
            ci5 ci5Var = (ci5) obj;
            if (this.a == ci5Var.a && this.b == ci5Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
