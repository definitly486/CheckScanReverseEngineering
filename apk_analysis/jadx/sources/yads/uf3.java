package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uf3 implements vf3 {
    public final float a;
    public final int b;

    public uf3(int i, float f) {
        this.a = f;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uf3)) {
            return false;
        }
        uf3 uf3Var = (uf3) obj;
        return Float.compare(this.a, uf3Var.a) == 0 && this.b == uf3Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Stretch(itemSpacing=" + this.a + ", maxVisibleItems=" + this.b + ")";
    }
}
