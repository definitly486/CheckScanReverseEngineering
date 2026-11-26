package androidx.compose.runtime.external.kotlinx.collections.immutable;

import defpackage.nl3;
import defpackage.te4;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface PersistentList<E> extends ImmutableList<E>, PersistentCollection<E> {

    public interface Builder<E> extends List<E>, PersistentCollection.Builder<E>, te4 {
        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
        PersistentList<E> build();
    }

    @Override // java.util.List
    PersistentList<E> add(int i, E e);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> add(E e);

    @Override // java.util.List
    PersistentList<E> addAll(int i, Collection<? extends E> collection);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> addAll(Collection<? extends E> collection);

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    Builder<E> builder();

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> clear();

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> remove(E e);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> removeAll(Collection<? extends E> collection);

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> removeAll(nl3<? super E, Boolean> nl3Var);

    PersistentList<E> removeAt(int i);

    @Override // java.util.List, java.util.Collection, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    PersistentList<E> retainAll(Collection<? extends E> collection);

    @Override // java.util.List
    PersistentList<E> set(int i, E e);
}
