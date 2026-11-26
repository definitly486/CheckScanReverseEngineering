package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class n95 extends xq4 implements Serializable {
    public final xq4 b;

    public n95(xq4 xq4Var) {
        this.b = xq4Var;
    }

    @Override // yads.xq4
    public final xq4 a() {
        return this.b;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.b.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n95) {
            return this.b.equals(((n95) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.b.hashCode();
    }

    public final String toString() {
        return this.b + ".reverse()";
    }
}
