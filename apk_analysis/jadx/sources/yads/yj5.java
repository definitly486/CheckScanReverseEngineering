package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class yj5 {
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public yj5(float f, float f2, float f3, int i) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yj5)) {
            return false;
        }
        yj5 yj5Var = (yj5) obj;
        return Float.compare(this.a, yj5Var.a) == 0 && Float.compare(this.b, yj5Var.b) == 0 && Float.compare(this.c, yj5Var.c) == 0 && this.d == yj5Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + rp0.a(rp0.a(Float.hashCode(this.a) * 31, this.b, 31), this.c, 31);
    }

    public final String toString() {
        return "ShadowData(offsetX=" + this.a + ", offsetY=" + this.b + ", radius=" + this.c + ", color=" + this.d + ")";
    }
}
