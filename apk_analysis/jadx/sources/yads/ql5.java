package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ql5 implements Comparable {
    public final int b;
    public final int c;

    public ql5(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ql5 ql5Var = (ql5) obj;
        return defpackage.aa4.f(this.b * this.c, ql5Var.b * ql5Var.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ql5)) {
            return false;
        }
        ql5 ql5Var = (ql5) obj;
        return this.b == ql5Var.b && this.c == ql5Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + (Integer.hashCode(this.b) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.b, this.c, "Size(width=", ", height=", ")");
    }
}
