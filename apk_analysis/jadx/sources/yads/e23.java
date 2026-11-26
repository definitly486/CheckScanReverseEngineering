package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e23 implements ai2 {
    public final int a;
    public final int b;

    public e23(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e23)) {
            return false;
        }
        e23 e23Var = (e23) obj;
        return this.a == e23Var.a && this.b == e23Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.a, this.b, "GalleryState(visibleItemIndex=", ", scrollOffset=", ")");
    }
}
