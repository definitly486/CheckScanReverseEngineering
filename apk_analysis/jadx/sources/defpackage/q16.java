package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q16 {
    public final int a;
    public final int b;

    public q16(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q16)) {
            return false;
        }
        q16 q16Var = (q16) obj;
        return this.a == q16Var.a && this.b == q16Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return ln.c(this.a, this.b, "PageContent(title=", ", imageRes=", ")");
    }
}
