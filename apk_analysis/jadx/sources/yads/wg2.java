package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wg2 {
    public final int a;
    public final int b;

    public wg2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wg2)) {
            return false;
        }
        wg2 wg2Var = (wg2) obj;
        return this.a == wg2Var.a && this.b == wg2Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.a, this.b, "DivVideoResolution(width=", ", height=", ")");
    }
}
