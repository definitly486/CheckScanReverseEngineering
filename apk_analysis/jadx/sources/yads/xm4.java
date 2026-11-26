package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class xm4 extends xq4 implements Serializable {
    public static final xm4 b = new xm4();

    private Object readResolve() {
        return b;
    }

    @Override // yads.xq4
    public final xq4 a() {
        return m95.b;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
