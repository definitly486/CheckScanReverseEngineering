package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t07<T> extends AtomicReference<T> implements cp2 {
    public abstract void a(T t);

    @Override // defpackage.cp2
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return get() == null;
    }
}
