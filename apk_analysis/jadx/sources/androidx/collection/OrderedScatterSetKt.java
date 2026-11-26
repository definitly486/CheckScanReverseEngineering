package androidx.collection;

/* JADX INFO: loaded from: classes.dex */
public final class OrderedScatterSetKt {
    private static final MutableOrderedScatterSet<Object> EmptyOrderedScatterSet = new MutableOrderedScatterSet<>(0);

    public static final <E> OrderedScatterSet<E> emptyOrderedScatterSet() {
        MutableOrderedScatterSet<Object> mutableOrderedScatterSet = EmptyOrderedScatterSet;
        mutableOrderedScatterSet.getClass();
        return mutableOrderedScatterSet;
    }

    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e, E e2, E e3) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(3);
        mutableOrderedScatterSet.plusAssign(e);
        mutableOrderedScatterSet.plusAssign(e2);
        mutableOrderedScatterSet.plusAssign(e3);
        return mutableOrderedScatterSet;
    }

    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E... eArr) {
        eArr.getClass();
        MutableOrderedScatterSet mutableOrderedScatterSet = new MutableOrderedScatterSet(eArr.length);
        mutableOrderedScatterSet.plusAssign((Object[]) eArr);
        return mutableOrderedScatterSet;
    }

    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e) {
        return mutableOrderedScatterSetOf(e);
    }

    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e, E e2) {
        return mutableOrderedScatterSetOf(e, e2);
    }

    public static final <E> OrderedScatterSet<E> orderedScatterSetOf(E e, E e2, E e3) {
        return mutableOrderedScatterSetOf(e, e2, e3);
    }

    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(1);
        mutableOrderedScatterSet.plusAssign(e);
        return mutableOrderedScatterSet;
    }

    public static final <E> OrderedScatterSet<E> orderedScatterSetOf() {
        MutableOrderedScatterSet<Object> mutableOrderedScatterSet = EmptyOrderedScatterSet;
        mutableOrderedScatterSet.getClass();
        return mutableOrderedScatterSet;
    }

    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E e, E e2) {
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(2);
        mutableOrderedScatterSet.plusAssign(e);
        mutableOrderedScatterSet.plusAssign(e2);
        return mutableOrderedScatterSet;
    }

    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf() {
        return new MutableOrderedScatterSet<>(0, 1, null);
    }

    public static final <E> MutableOrderedScatterSet<E> mutableOrderedScatterSetOf(E... eArr) {
        eArr.getClass();
        MutableOrderedScatterSet<E> mutableOrderedScatterSet = new MutableOrderedScatterSet<>(eArr.length);
        mutableOrderedScatterSet.plusAssign((Object[]) eArr);
        return mutableOrderedScatterSet;
    }
}
