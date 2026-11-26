package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class w13 {
    public final xo2 a;
    public final boolean b = true;

    public w13(xo2 xo2Var) {
        this.a = xo2Var;
    }

    public final xo2 a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w13)) {
            return false;
        }
        w13 w13Var = (w13) obj;
        return this.a == w13Var.a && this.b == w13Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FunctionArgument(type=" + this.a + ", isVariadic=" + this.b + ")";
    }

    public w13(xo2 xo2Var, int i) {
        this.a = xo2Var;
    }
}
