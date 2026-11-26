package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j44<T> {
    public final int a;
    public final T b;

    public j44(int i, T t) {
        this.a = i;
        this.b = t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j44)) {
            return false;
        }
        j44 j44Var = (j44) obj;
        return this.a == j44Var.a && aa4.e(this.b, j44Var.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        T t = this.b;
        return iHashCode + (t == null ? 0 : t.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IndexedValue(index=");
        sb.append(this.a);
        sb.append(", value=");
        return vg.d(sb, this.b, ')');
    }
}
