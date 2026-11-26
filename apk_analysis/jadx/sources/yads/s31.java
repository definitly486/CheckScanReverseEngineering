package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class s31 extends d41 {
    public final int a;
    public final y30 b;

    public s31(int i, y30 y30Var) {
        this.a = i;
        this.b = y30Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s31)) {
            return false;
        }
        s31 s31Var = (s31) obj;
        return this.a == s31Var.a && defpackage.aa4.e(this.b, s31Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "LinearGradient(angle=" + this.a + ", colormap=" + this.b + ")";
    }
}
