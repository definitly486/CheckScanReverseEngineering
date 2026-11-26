package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class yn0 implements kv {
    public final int b;
    public final int c;
    public final int d;

    public yn0(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yn0)) {
            return false;
        }
        yn0 yn0Var = (yn0) obj;
        return this.b == yn0Var.b && this.c == yn0Var.c && this.d == yn0Var.d;
    }

    public final int hashCode() {
        return ((((this.b + 527) * 31) + this.c) * 31) + this.d;
    }
}
