package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import defpackage.a07;
import defpackage.aq5;
import defpackage.b36;
import defpackage.j59;
import defpackage.n05;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.ua8;
import defpackage.ul2;
import defpackage.zo7;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ExtensionsKt {
    @ul2
    public static final <K, V> PersistentMap<K, V> immutableHashMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        return persistentHashMapOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
    }

    @ul2
    public static final <E> PersistentSet<E> immutableHashSetOf(E... eArr) {
        return persistentHashSetOf(Arrays.copyOf(eArr, eArr.length));
    }

    @ul2
    public static final <E> PersistentList<E> immutableListOf(E... eArr) {
        return persistentListOf(Arrays.copyOf(eArr, eArr.length));
    }

    @ul2
    public static final <K, V> PersistentMap<K, V> immutableMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        return persistentMapOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
    }

    @ul2
    public static final <E> PersistentSet<E> immutableSetOf(E... eArr) {
        return persistentSetOf(Arrays.copyOf(eArr, eArr.length));
    }

    public static final <E> PersistentSet<E> intersect(PersistentSet<? extends E> persistentSet, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentSet.retainAll((Collection<? extends Object>) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        builder.getClass();
        iterable.getClass();
        builder.retainAll(nn1.v(iterable));
        return builder.build();
    }

    public static final <E> PersistentCollection<E> minus(PersistentCollection<? extends E> persistentCollection, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentCollection.removeAll((Collection<? extends Object>) iterable);
        }
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.A(iterable, builder);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> mutate(PersistentMap<? extends K, ? extends V> persistentMap, nl3<? super Map<K, V>, j59> nl3Var) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        nl3Var.invoke(builder);
        return builder.build2();
    }

    public static final <K, V> PersistentMap<K, V> persistentHashMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        PersistentHashMap<K, V> persistentHashMapEmptyOf$runtime = PersistentHashMap.Companion.emptyOf$runtime();
        persistentHashMapEmptyOf$runtime.getClass();
        PersistentMap.Builder<K, V> builder = persistentHashMapEmptyOf$runtime.builder2();
        n05.j(builder, b36VarArr);
        return builder.build2();
    }

    public static final <E> PersistentSet<E> persistentHashSetOf(E... eArr) {
        return PersistentHashSet.Companion.emptyOf$runtime().addAll((Collection) aq5.b(eArr));
    }

    public static final <E> PersistentList<E> persistentListOf(E... eArr) {
        return UtilsKt.persistentVectorOf().addAll((Collection) aq5.b(eArr));
    }

    public static final <K, V> PersistentMap<K, V> persistentMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        PersistentOrderedMap<K, V> persistentOrderedMapEmptyOf$runtime = PersistentOrderedMap.Companion.emptyOf$runtime();
        persistentOrderedMapEmptyOf$runtime.getClass();
        PersistentMap.Builder<K, V> builder = persistentOrderedMapEmptyOf$runtime.builder2();
        n05.j(builder, b36VarArr);
        return builder.build2();
    }

    public static final <E> PersistentSet<E> persistentSetOf(E... eArr) {
        return PersistentOrderedSet.Companion.emptyOf$runtime().addAll((Collection) aq5.b(eArr));
    }

    public static final <E> PersistentCollection<E> plus(PersistentCollection<? extends E> persistentCollection, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentCollection.addAll((Collection<? extends Object>) iterable);
        }
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.s(iterable, builder);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> putAll(PersistentMap<? extends K, ? extends V> persistentMap, zo7<? extends b36<? extends K, ? extends V>> zo7Var) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        builder.getClass();
        zo7Var.getClass();
        for (b36<? extends K, ? extends V> b36Var : zo7Var) {
            builder.put((Object) b36Var.b, (Object) b36Var.c);
        }
        return builder.build2();
    }

    public static final <T> ImmutableList<T> toImmutableList(Iterable<? extends T> iterable) {
        ImmutableList<T> immutableList = iterable instanceof ImmutableList ? (ImmutableList) iterable : null;
        return immutableList == null ? toPersistentList(iterable) : immutableList;
    }

    public static final <K, V> ImmutableMap<K, V> toImmutableMap(Map<K, ? extends V> map) {
        ImmutableMap<K, V> immutableMap = map instanceof ImmutableMap ? (ImmutableMap) map : null;
        if (immutableMap != null) {
            return immutableMap;
        }
        PersistentMap.Builder builder = map instanceof PersistentMap.Builder ? (PersistentMap.Builder) map : null;
        PersistentMap<K, V> persistentMapBuild = builder != null ? builder.build2() : null;
        return persistentMapBuild != null ? persistentMapBuild : persistentMapOf().putAll((Map) map);
    }

    public static final <T> ImmutableSet<T> toImmutableSet(Iterable<? extends T> iterable) {
        ImmutableSet<T> immutableSet = iterable instanceof ImmutableSet ? (ImmutableSet) iterable : null;
        if (immutableSet != null) {
            return immutableSet;
        }
        PersistentSet.Builder builder = iterable instanceof PersistentSet.Builder ? (PersistentSet.Builder) iterable : null;
        PersistentSet persistentSetBuild = builder != null ? builder.build() : null;
        return persistentSetBuild != null ? persistentSetBuild : plus(persistentSetOf(), (Iterable) iterable);
    }

    public static final <K, V> PersistentMap<K, V> toPersistentHashMap(Map<K, ? extends V> map) {
        PersistentHashMap persistentHashMap = map instanceof PersistentHashMap ? (PersistentHashMap) map : null;
        if (persistentHashMap != null) {
            return persistentHashMap;
        }
        PersistentHashMapBuilder persistentHashMapBuilder = map instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) map : null;
        PersistentHashMap<K, V> persistentHashMapBuild = persistentHashMapBuilder != null ? persistentHashMapBuilder.build2() : null;
        return persistentHashMapBuild != null ? persistentHashMapBuild : PersistentHashMap.Companion.emptyOf$runtime().putAll((Map) map);
    }

    public static final <T> PersistentSet<T> toPersistentHashSet(Iterable<? extends T> iterable) {
        PersistentHashSet persistentHashSet = iterable instanceof PersistentHashSet ? (PersistentHashSet) iterable : null;
        if (persistentHashSet != null) {
            return persistentHashSet;
        }
        PersistentHashSetBuilder persistentHashSetBuilder = iterable instanceof PersistentHashSetBuilder ? (PersistentHashSetBuilder) iterable : null;
        PersistentHashSet persistentHashSetBuild = persistentHashSetBuilder != null ? persistentHashSetBuilder.build() : null;
        return persistentHashSetBuild != null ? persistentHashSetBuild : plus(PersistentHashSet.Companion.emptyOf$runtime(), (Iterable) iterable);
    }

    public static final <T> PersistentList<T> toPersistentList(Iterable<? extends T> iterable) {
        PersistentList<T> persistentList = iterable instanceof PersistentList ? (PersistentList) iterable : null;
        if (persistentList != null) {
            return persistentList;
        }
        PersistentList.Builder builder = iterable instanceof PersistentList.Builder ? (PersistentList.Builder) iterable : null;
        PersistentList<T> persistentListBuild = builder != null ? builder.build() : null;
        return persistentListBuild == null ? plus(persistentListOf(), (Iterable) iterable) : persistentListBuild;
    }

    public static final <K, V> PersistentMap<K, V> toPersistentMap(Map<K, ? extends V> map) {
        PersistentOrderedMap persistentOrderedMap = map instanceof PersistentOrderedMap ? (PersistentOrderedMap) map : null;
        if (persistentOrderedMap != null) {
            return persistentOrderedMap;
        }
        PersistentOrderedMapBuilder persistentOrderedMapBuilder = map instanceof PersistentOrderedMapBuilder ? (PersistentOrderedMapBuilder) map : null;
        PersistentMap<K, V> persistentMapBuild = persistentOrderedMapBuilder != null ? persistentOrderedMapBuilder.build2() : null;
        return persistentMapBuild == null ? PersistentOrderedMap.Companion.emptyOf$runtime().putAll((Map) map) : persistentMapBuild;
    }

    public static final <T> PersistentSet<T> toPersistentSet(Iterable<? extends T> iterable) {
        PersistentOrderedSet persistentOrderedSet = iterable instanceof PersistentOrderedSet ? (PersistentOrderedSet) iterable : null;
        if (persistentOrderedSet != null) {
            return persistentOrderedSet;
        }
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = iterable instanceof PersistentOrderedSetBuilder ? (PersistentOrderedSetBuilder) iterable : null;
        PersistentSet<T> persistentSetBuild = persistentOrderedSetBuilder != null ? persistentOrderedSetBuilder.build() : null;
        return persistentSetBuild == null ? plus(PersistentOrderedSet.Companion.emptyOf$runtime(), (Iterable) iterable) : persistentSetBuild;
    }

    @ul2
    public static final <E> PersistentList<E> immutableListOf() {
        return persistentListOf();
    }

    @ul2
    public static final <E> PersistentSet<E> immutableSetOf() {
        return persistentSetOf();
    }

    public static final <T> PersistentList<T> mutate(PersistentList<? extends T> persistentList, nl3<? super List<T>, j59> nl3Var) {
        PersistentList.Builder<? extends T> builder = persistentList.builder();
        nl3Var.invoke(builder);
        return builder.build();
    }

    public static final <E> PersistentList<E> persistentListOf() {
        return UtilsKt.persistentVectorOf();
    }

    public static final <T> PersistentSet<T> mutate(PersistentSet<? extends T> persistentSet, nl3<? super Set<T>, j59> nl3Var) {
        PersistentSet.Builder<? extends T> builder = persistentSet.builder();
        nl3Var.invoke(builder);
        return builder.build();
    }

    public static final <E> PersistentSet<E> persistentHashSetOf() {
        return PersistentHashSet.Companion.emptyOf$runtime();
    }

    public static final <E> PersistentSet<E> persistentSetOf() {
        return PersistentOrderedSet.Companion.emptyOf$runtime();
    }

    public static final <T> ImmutableList<T> toImmutableList(zo7<? extends T> zo7Var) {
        return toPersistentList(zo7Var);
    }

    public static final ImmutableList<Character> toImmutableList(CharSequence charSequence) {
        return toPersistentList(charSequence);
    }

    public static final <K, V> PersistentMap<K, V> persistentHashMapOf() {
        return PersistentHashMap.Companion.emptyOf$runtime();
    }

    public static final <K, V> PersistentMap<K, V> persistentMapOf() {
        return PersistentOrderedMap.Companion.emptyOf$runtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentCollection<E> minus(PersistentCollection<? extends E> persistentCollection, E e) {
        return persistentCollection.remove((Object) e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentCollection<E> plus(PersistentCollection<? extends E> persistentCollection, E e) {
        return persistentCollection.add((Object) e);
    }

    public static final <E> PersistentCollection<E> minus(PersistentCollection<? extends E> persistentCollection, E[] eArr) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.C(builder, eArr);
        return builder.build();
    }

    public static final <E> PersistentCollection<E> plus(PersistentCollection<? extends E> persistentCollection, E[] eArr) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.u(builder, eArr);
        return builder.build();
    }

    public static final <E> PersistentCollection<E> minus(PersistentCollection<? extends E> persistentCollection, zo7<? extends E> zo7Var) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.B(builder, zo7Var);
        return builder.build();
    }

    public static final <E> PersistentCollection<E> plus(PersistentCollection<? extends E> persistentCollection, zo7<? extends E> zo7Var) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        nn1.t(builder, zo7Var);
        return builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentList<E> minus(PersistentList<? extends E> persistentList, E e) {
        return persistentList.remove((Object) e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentList<E> plus(PersistentList<? extends E> persistentList, E e) {
        return persistentList.add((Object) e);
    }

    public static final <E> PersistentList<E> minus(PersistentList<? extends E> persistentList, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentList.removeAll((Collection<? extends Object>) iterable);
        }
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.A(iterable, builder);
        return builder.build();
    }

    public static final <E> PersistentList<E> plus(PersistentList<? extends E> persistentList, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentList.addAll((Collection<? extends Object>) iterable);
        }
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.s(iterable, builder);
        return builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentSet<E> minus(PersistentSet<? extends E> persistentSet, E e) {
        return persistentSet.remove((Object) e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> PersistentSet<E> plus(PersistentSet<? extends E> persistentSet, E e) {
        return persistentSet.add((Object) e);
    }

    public static final <E> PersistentSet<E> minus(PersistentSet<? extends E> persistentSet, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentSet.removeAll((Collection<? extends Object>) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.A(iterable, builder);
        return builder.build();
    }

    public static final <E> PersistentSet<E> plus(PersistentSet<? extends E> persistentSet, Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return persistentSet.addAll((Collection<? extends Object>) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.s(iterable, builder);
        return builder.build();
    }

    public static final <E> PersistentSet<E> intersect(PersistentCollection<? extends E> persistentCollection, Iterable<? extends E> iterable) {
        return intersect(toPersistentSet(persistentCollection), (Iterable) iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> PersistentMap<K, V> minus(PersistentMap<? extends K, ? extends V> persistentMap, K k) {
        persistentMap.getClass();
        return persistentMap.remove((Object) k);
    }

    public static final <K, V> PersistentMap<K, V> plus(PersistentMap<? extends K, ? extends V> persistentMap, b36<? extends K, ? extends V> b36Var) {
        persistentMap.getClass();
        return persistentMap.put((a07) b36Var.b, (a07) b36Var.c);
    }

    public static final <E> PersistentList<E> minus(PersistentList<? extends E> persistentList, E[] eArr) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.C(builder, eArr);
        return builder.build();
    }

    public static final <E> PersistentList<E> minus(PersistentList<? extends E> persistentList, zo7<? extends E> zo7Var) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.B(builder, zo7Var);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> plus(PersistentMap<? extends K, ? extends V> persistentMap, Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        return putAll(persistentMap, iterable);
    }

    public static final <T> ImmutableSet<T> toImmutableSet(zo7<? extends T> zo7Var) {
        return toPersistentSet(zo7Var);
    }

    public static final <T> PersistentList<T> toPersistentList(zo7<? extends T> zo7Var) {
        return plus(persistentListOf(), (zo7) zo7Var);
    }

    public static final <K, V> PersistentMap<K, V> plus(PersistentMap<? extends K, ? extends V> persistentMap, b36<? extends K, ? extends V>[] b36VarArr) {
        return putAll(persistentMap, b36VarArr);
    }

    public static final PersistentSet<Character> toImmutableSet(CharSequence charSequence) {
        return toPersistentSet(charSequence);
    }

    public static final PersistentList<Character> toPersistentList(CharSequence charSequence) {
        PersistentList.Builder builder = persistentListOf().builder();
        ua8.m0(charSequence, builder);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> plus(PersistentMap<? extends K, ? extends V> persistentMap, zo7<? extends b36<? extends K, ? extends V>> zo7Var) {
        return putAll(persistentMap, zo7Var);
    }

    public static final <K, V> PersistentMap<K, V> putAll(PersistentMap<? extends K, ? extends V> persistentMap, Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        n05.i(builder, iterable);
        return builder.build2();
    }

    public static final <T> PersistentSet<T> toPersistentHashSet(zo7<? extends T> zo7Var) {
        return plus(persistentHashSetOf(), (zo7) zo7Var);
    }

    public static final <T> PersistentSet<T> toPersistentSet(zo7<? extends T> zo7Var) {
        return plus(persistentSetOf(), (zo7) zo7Var);
    }

    public static final <E> PersistentSet<E> minus(PersistentSet<? extends E> persistentSet, E[] eArr) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.C(builder, eArr);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> plus(PersistentMap<? extends K, ? extends V> persistentMap, Map<? extends K, ? extends V> map) {
        return putAll(persistentMap, map);
    }

    public static final PersistentSet<Character> toPersistentHashSet(CharSequence charSequence) {
        PersistentSet.Builder builder = persistentHashSetOf().builder();
        ua8.m0(charSequence, builder);
        return builder.build();
    }

    public static final PersistentSet<Character> toPersistentSet(CharSequence charSequence) {
        PersistentSet.Builder builder = persistentSetOf().builder();
        ua8.m0(charSequence, builder);
        return builder.build();
    }

    public static final <E> PersistentList<E> plus(PersistentList<? extends E> persistentList, E[] eArr) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.u(builder, eArr);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> putAll(PersistentMap<? extends K, ? extends V> persistentMap, b36<? extends K, ? extends V>[] b36VarArr) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        n05.j(builder, b36VarArr);
        return builder.build2();
    }

    public static final <E> PersistentSet<E> minus(PersistentSet<? extends E> persistentSet, zo7<? extends E> zo7Var) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.B(builder, zo7Var);
        return builder.build();
    }

    public static final <E> PersistentList<E> plus(PersistentList<? extends E> persistentList, zo7<? extends E> zo7Var) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        nn1.t(builder, zo7Var);
        return builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> PersistentMap<K, V> putAll(PersistentMap<? extends K, ? extends V> persistentMap, Map<? extends K, ? extends V> map) {
        persistentMap.getClass();
        return persistentMap.putAll((Map<? extends Object, ? extends Object>) map);
    }

    public static final <K, V> PersistentMap<K, V> minus(PersistentMap<? extends K, ? extends V> persistentMap, Iterable<? extends K> iterable) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        nn1.A(iterable, builder.keySet());
        return builder.build2();
    }

    public static final <E> PersistentSet<E> plus(PersistentSet<? extends E> persistentSet, E[] eArr) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.u(builder, eArr);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> minus(PersistentMap<? extends K, ? extends V> persistentMap, K[] kArr) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        nn1.C(builder.keySet(), kArr);
        return builder.build2();
    }

    public static final <E> PersistentSet<E> plus(PersistentSet<? extends E> persistentSet, zo7<? extends E> zo7Var) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        nn1.t(builder, zo7Var);
        return builder.build();
    }

    public static final <K, V> PersistentMap<K, V> minus(PersistentMap<? extends K, ? extends V> persistentMap, zo7<? extends K> zo7Var) {
        persistentMap.getClass();
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder2();
        nn1.B(builder.keySet(), zo7Var);
        return builder.build2();
    }
}
