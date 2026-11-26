package com.google.common.collect;

import defpackage.a07;
import defpackage.d31;
import defpackage.hi5;
import defpackage.o0;
import defpackage.qz0;
import defpackage.y69;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class a0<E> extends o<E> {
    public static final a0<Comparable> i;
    public final transient j<E> h;

    static {
        j.b bVar = j.c;
        i = new a0<>(w.f, hi5.b);
    }

    public a0(j<E> jVar, Comparator<? super E> comparator) {
        super(comparator);
        this.h = jVar;
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public final j<E> a() {
        return this.h;
    }

    @Override // com.google.common.collect.i
    public final int b(int i2, Object[] objArr) {
        return this.h.b(i2, objArr);
    }

    @Override // com.google.common.collect.o, java.util.NavigableSet
    public final E ceiling(E e) {
        int iX = x(e, true);
        j<E> jVar = this.h;
        if (iX == jVar.size()) {
            return null;
        }
        return jVar.get(iX);
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.h, obj, this.e) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        if (collection instanceof t) {
            collection = ((t) collection).elementSet();
        }
        Comparator<? super E> comparator = this.e;
        if (!d31.p(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        y69<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        o0 o0Var = (o0) it;
        if (!o0Var.hasNext()) {
            return false;
        }
        a07 a07Var = (Object) it2.next();
        a07 a07Var2 = (Object) o0Var.next();
        while (true) {
            try {
                int iCompare = comparator.compare(a07Var2, a07Var);
                if (iCompare < 0) {
                    if (!o0Var.hasNext()) {
                        return false;
                    }
                    a07Var2 = (Object) o0Var.next();
                } else if (iCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    a07Var = (Object) it2.next();
                } else if (iCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }
    }

    @Override // com.google.common.collect.i
    public final Object[] d() {
        return this.h.d();
    }

    @Override // com.google.common.collect.n, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        a07 a07Var;
        E next;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.h.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator<? super E> comparator = this.e;
        if (!d31.p(comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            y69<E> it2 = iterator();
            do {
                o0 o0Var = (o0) it2;
                if (!o0Var.hasNext()) {
                    return true;
                }
                a07Var = (Object) o0Var.next();
                next = it.next();
                if (next == null) {
                    return false;
                }
            } while (comparator.compare(a07Var, next) == 0);
            return false;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.i
    public final int f() {
        return this.h.f();
    }

    @Override // com.google.common.collect.o, java.util.SortedSet
    public final E first() {
        if (!isEmpty()) {
            return this.h.get(0);
        }
        qz0.e();
        return null;
    }

    @Override // com.google.common.collect.o, java.util.NavigableSet
    public final E floor(E e) {
        int iW = w(e, true) - 1;
        if (iW == -1) {
            return null;
        }
        return this.h.get(iW);
    }

    @Override // com.google.common.collect.i
    public final int g() {
        return this.h.g();
    }

    @Override // com.google.common.collect.o, java.util.NavigableSet
    public final E higher(E e) {
        int iX = x(e, false);
        j<E> jVar = this.h;
        if (iX == jVar.size()) {
            return null;
        }
        return jVar.get(iX);
    }

    @Override // com.google.common.collect.i
    public final boolean i() {
        return this.h.i();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return this.h.listIterator(0);
    }

    @Override // com.google.common.collect.o, java.util.SortedSet
    public final E last() {
        if (isEmpty()) {
            qz0.e();
            return null;
        }
        j<E> jVar = this.h;
        return jVar.get(jVar.size() - 1);
    }

    @Override // com.google.common.collect.o, java.util.NavigableSet
    public final E lower(E e) {
        int iW = w(e, false) - 1;
        if (iW == -1) {
            return null;
        }
        return this.h.get(iW);
    }

    @Override // com.google.common.collect.o
    public final a0 q() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.e);
        return isEmpty() ? o.s(comparatorReverseOrder) : new a0(this.h.w(), comparatorReverseOrder);
    }

    @Override // com.google.common.collect.o, java.util.NavigableSet
    /* JADX INFO: renamed from: r */
    public final j.b descendingIterator() {
        return this.h.w().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public final a0 t(Object obj, boolean z) {
        int iW = w(obj, z);
        j<E> jVar = this.h;
        if (iW == jVar.size()) {
            return this;
        }
        Comparator<? super E> comparator = this.e;
        return iW > 0 ? new a0(jVar.subList(0, iW), comparator) : o.s(comparator);
    }

    @Override // com.google.common.collect.o
    public final o<E> u(E e, boolean z, E e2, boolean z2) {
        return v(e, z).t(e2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public final a0 v(Object obj, boolean z) {
        int iX = x(obj, z);
        j<E> jVar = this.h;
        int size = jVar.size();
        if (iX == 0 && size == jVar.size()) {
            return this;
        }
        Comparator<? super E> comparator = this.e;
        return iX < size ? new a0(jVar.subList(iX, size), comparator) : o.s(comparator);
    }

    public final int w(E e, boolean z) {
        e.getClass();
        int iBinarySearch = Collections.binarySearch(this.h, e, this.e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    @Override // com.google.common.collect.o, com.google.common.collect.n, com.google.common.collect.i
    public Object writeReplace() {
        return super.writeReplace();
    }

    public final int x(E e, boolean z) {
        e.getClass();
        int iBinarySearch = Collections.binarySearch(this.h, e, this.e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }
}
