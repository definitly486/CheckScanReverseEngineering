package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ax3 extends bx3 {
    public final int a;
    public final boolean b;

    public ax3(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ax3)) {
            return false;
        }
        ax3 ax3Var = (ax3) obj;
        return this.a == ax3Var.a && this.b == ax3Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Solid(color=" + this.a + ", isEnabled=" + this.b + ")";
    }
}
