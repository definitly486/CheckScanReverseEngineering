package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class j96 implements Comparable {
    public final int b;
    public final int c;
    public final int d;

    public j96(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j96 j96Var) {
        int i = this.b;
        int i2 = j96Var.b;
        if (i != i2) {
            return defpackage.aa4.f(i, i2);
        }
        int i3 = this.c;
        int i4 = j96Var.c;
        return i3 != i4 ? defpackage.aa4.f(i3, i4) : defpackage.aa4.f(this.d, j96Var.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j96)) {
            return false;
        }
        j96 j96Var = (j96) obj;
        return this.b == j96Var.b && this.c == j96Var.c && this.d == j96Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + i96.a(this.c, Integer.hashCode(this.b) * 31, 31);
    }

    public final String toString() {
        return this.b + "." + this.c + "." + this.d;
    }
}
