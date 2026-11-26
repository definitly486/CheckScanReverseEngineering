package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v49 implements Comparable<v49> {
    public final short b;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(v49 v49Var) {
        return aa4.f(this.b & 65535, v49Var.b & 65535);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof v49) {
            return this.b == ((v49) obj).b;
        }
        return false;
    }

    public final int hashCode() {
        return Short.hashCode(this.b);
    }

    public final String toString() {
        return String.valueOf(this.b & 65535);
    }
}
