package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public final class w67 implements Comparator<Comparable<? super Object>> {
    public static final w67 b = new w67();

    @Override // java.util.Comparator
    public final int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        comparable3.getClass();
        comparable4.getClass();
        return comparable4.compareTo(comparable3);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return gi5.b;
    }
}
