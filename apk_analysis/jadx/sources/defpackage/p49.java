package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p49 implements Comparable<p49> {
    public final long b;

    public /* synthetic */ p49(long j) {
        this.b = j;
    }

    @Override // java.lang.Comparable
    public final int compareTo(p49 p49Var) {
        return aa4.g(this.b ^ Long.MIN_VALUE, p49Var.b ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p49) {
            return this.b == ((p49) obj).b;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.b);
    }

    public final String toString() {
        return vp2.e(10, this.b);
    }
}
