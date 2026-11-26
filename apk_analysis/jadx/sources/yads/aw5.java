package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class aw5 {
    public final int a;
    public final int b;
    public final int c;

    public aw5(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aw5)) {
            return false;
        }
        aw5 aw5Var = (aw5) obj;
        return this.a == aw5Var.a && this.b == aw5Var.b && this.c == aw5Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + i96.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        return defpackage.l2.e(defpackage.bg.f(i, i2, "TextDiff(start=", ", added=", ", removed="), ")", this.c);
    }
}
