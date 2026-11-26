package com.google.common.collect;

import defpackage.bf6;
import defpackage.cf6;
import defpackage.in1;
import defpackage.lr7;
import defpackage.o8;
import defpackage.qz0;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 {

    public static class a<E> extends in1<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return d0.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return d0.c(this);
        }
    }

    public static class b<E> extends a<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator<? super E> comparator() {
            return ((SortedSet) this.b).comparator();
        }

        @Override // java.util.SortedSet
        public final E first() {
            Iterator<E> it = this.b.iterator();
            it.getClass();
            while (it.hasNext()) {
                E next = it.next();
                if (this.c.apply(next)) {
                    return next;
                }
            }
            qz0.e();
            return null;
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> headSet(E e) {
            return new b(((SortedSet) this.b).headSet(e), this.c);
        }

        @Override // java.util.SortedSet
        public final E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.b;
            while (true) {
                E e = (Object) sortedSetHeadSet.last();
                if (this.c.apply(e)) {
                    return e;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e);
            }
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> subSet(E e, E e2) {
            return new b(((SortedSet) this.b).subSet(e, e2), this.c);
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> tailSet(E e) {
            return new b(((SortedSet) this.b).tailSet(e), this.c);
        }
    }

    public static abstract class c<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            collection.getClass();
            if (collection instanceof t) {
                collection = ((t) collection).elementSet();
            }
            boolean zRemove = false;
            if (!(collection instanceof Set) || collection.size() <= size()) {
                Iterator<?> it = collection.iterator();
                while (it.hasNext()) {
                    zRemove |= remove(it.next());
                }
                return zRemove;
            }
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (collection.contains(it2.next())) {
                    it2.remove();
                    zRemove = true;
                }
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    public static abstract class d<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public abstract lr7 iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public abstract int b();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof Set) {
                    Set set = (Set) obj;
                    boolean z = set instanceof d;
                    int iB = z ? ((d) set).b() : set.size();
                    if (iB >= 0) {
                        int size = z ? 0 : set.size();
                        if (b() >= size) {
                            lr7 it = iterator();
                            int i = 0;
                            while (it.hasNext()) {
                                try {
                                    if (set.contains(it.next())) {
                                        i++;
                                    }
                                } catch (ClassCastException | NullPointerException unused) {
                                }
                            }
                            if (i != iB) {
                                if (i >= size) {
                                    Iterator<E> it2 = set.iterator();
                                    int i2 = 0;
                                    while (it2.hasNext()) {
                                        it2.next();
                                        i2++;
                                        if (i2 > i) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }
    }

    public static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static a b(Set set, bf6 bf6Var) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (!(collection instanceof a)) {
                return new b(collection, bf6Var);
            }
            a aVar = (a) collection;
            return new b((SortedSet) aVar.b, new cf6(Arrays.asList(aVar.c, bf6Var)));
        }
        if (set instanceof a) {
            a aVar2 = (a) set;
            return new a((Set) aVar2.b, new cf6(Arrays.asList(aVar2.c, bf6Var)));
        }
        set.getClass();
        return new a(set, bf6Var);
    }

    public static int c(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static c0 d(n nVar, n nVar2) {
        o8.l(nVar, "set1");
        o8.l(nVar2, "set2");
        return new c0(nVar, nVar2);
    }
}
