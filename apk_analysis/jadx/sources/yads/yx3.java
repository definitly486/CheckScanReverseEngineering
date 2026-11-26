package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class yx3 {
    public final int a;
    public final zx3 b;

    public yx3(int i, zx3 zx3Var) {
        this.a = i;
        this.b = zx3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yx3)) {
            return false;
        }
        yx3 yx3Var = (yx3) obj;
        return this.a == yx3Var.a && this.b == yx3Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "MeasuredSizeSpec(value=" + this.a + ", mode=" + this.b + ")";
    }
}
