package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public final class gi5 implements Comparator<Comparable<? super Object>> {
    public static final gi5 b = new gi5();

    @Override // java.util.Comparator
    public final int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        comparable3.getClass();
        comparable4.getClass();
        return comparable3.compareTo(comparable4);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return w67.b;
    }
}
