package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class hp7 extends qm3 implements nl3<Iterable<Object>, Iterator<Object>> {
    public static final hp7 c = new hp7(1, Iterable.class, "iterator", "iterator()Ljava/util/Iterator;", 0);

    @Override // defpackage.nl3
    public final Iterator<Object> invoke(Iterable<Object> iterable) {
        Iterable<Object> iterable2 = iterable;
        iterable2.getClass();
        return iterable2.iterator();
    }
}
