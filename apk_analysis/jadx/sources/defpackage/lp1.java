package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class lp1<T> extends f06<T> implements Serializable {
    public final wj2 b;

    public lp1(wj2 wj2Var) {
        this.b = wj2Var;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return this.b.compare(t, t2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof lp1) {
            return this.b.equals(((lp1) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b.toString();
    }
}
