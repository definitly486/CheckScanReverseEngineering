package androidx.paging.internal;

import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class CopyOnWriteArrayList<T> implements Iterable<T>, re4 {
    private final java.util.concurrent.CopyOnWriteArrayList<T> delegate = new java.util.concurrent.CopyOnWriteArrayList<>();

    public final boolean add(T t) {
        return this.delegate.add(t);
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Iterator<T> it = this.delegate.iterator();
        it.getClass();
        return it;
    }

    public final boolean remove(T t) {
        return this.delegate.remove(t);
    }
}
