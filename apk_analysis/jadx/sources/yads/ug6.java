package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ug6 {
    public final int a;
    public final int b;

    public ug6(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ug6)) {
            return false;
        }
        ug6 ug6Var = (ug6) obj;
        return this.a == ug6Var.a && this.b == ug6Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.a, this.b, "ViewSize(width=", ", height=", ")");
    }
}
