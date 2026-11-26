package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class m95 extends xq4 implements Serializable {
    public static final m95 b = new m95();

    private Object readResolve() {
        return b;
    }

    @Override // yads.xq4
    public final xq4 a() {
        return xm4.b;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
