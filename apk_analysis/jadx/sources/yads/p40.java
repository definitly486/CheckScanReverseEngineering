package yads;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class p40 extends xq4 implements Serializable {
    public final Comparator b;

    public p40(Comparator comparator) {
        comparator.getClass();
        this.b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.b.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p40) {
            return this.b.equals(((p40) obj).b);
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
