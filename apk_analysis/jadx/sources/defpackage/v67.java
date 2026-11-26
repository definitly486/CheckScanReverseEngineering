package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class v67 extends f06<Comparable<?>> implements Serializable {
    public static final v67 b = new v67();

    private Object readResolve() {
        return b;
    }

    @Override // defpackage.f06
    public final <S extends Comparable<?>> f06<S> a() {
        return hi5.b;
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
