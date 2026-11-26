package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class hi5 extends f06<Comparable<?>> implements Serializable {
    public static final hi5 b = new hi5();

    private Object readResolve() {
        return b;
    }

    @Override // defpackage.f06
    public final <S extends Comparable<?>> f06<S> a() {
        return v67.b;
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
