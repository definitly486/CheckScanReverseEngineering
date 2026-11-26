package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class lx1<T> implements zo7<T> {
    public final AtomicReference<zo7<T>> a;

    public lx1(zo7<? extends T> zo7Var) {
        this.a = new AtomicReference<>(zo7Var);
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        zo7<T> andSet = this.a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        ah.f("This sequence can be consumed only once.");
        return null;
    }
}
