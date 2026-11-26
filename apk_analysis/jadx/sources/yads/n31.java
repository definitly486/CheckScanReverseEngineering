package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n31 extends p31 {
    public final int a;
    public final ud1 b;

    public n31(int i, ud1 ud1Var) {
        this.a = i;
        this.b = ud1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n31)) {
            return false;
        }
        n31 n31Var = (n31) obj;
        return this.a == n31Var.a && defpackage.aa4.e(this.b, n31Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Blur(radius=" + this.a + ", div=" + this.b + ")";
    }
}
