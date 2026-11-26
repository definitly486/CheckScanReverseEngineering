package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c1<E> extends AbstractCollection<E> implements Collection<E>, se4 {
    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean add(E e);

    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
