package androidx.compose.runtime.external.kotlinx.collections.immutable;

import defpackage.nl3;
import defpackage.se4;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public interface PersistentCollection<E> extends ImmutableCollection<E> {

    public interface Builder<E> extends Collection<E>, se4 {
        PersistentCollection<E> build();
    }

    @Override // java.util.Collection
    PersistentCollection<E> add(E e);

    @Override // java.util.Collection
    PersistentCollection<E> addAll(Collection<? extends E> collection);

    Builder<E> builder();

    @Override // java.util.Collection
    PersistentCollection<E> clear();

    @Override // java.util.Collection
    PersistentCollection<E> remove(E e);

    @Override // java.util.Collection
    PersistentCollection<E> removeAll(Collection<? extends E> collection);

    PersistentCollection<E> removeAll(nl3<? super E, Boolean> nl3Var);

    @Override // java.util.Collection
    PersistentCollection<E> retainAll(Collection<? extends E> collection);
}
