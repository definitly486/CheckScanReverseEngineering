package com.google.common.collect;

import defpackage.hi5;
import defpackage.m96;
import defpackage.o8;
import defpackage.t48;
import defpackage.ya4;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o<E> extends n<E> implements NavigableSet<E>, t48<E> {
    public static final /* synthetic */ int g = 0;
    public final transient Comparator<? super E> e;
    public transient o<E> f;

    public static final class a<E> extends n.a<E> {
        public final Comparator<? super E> d;

        public a(Comparator<? super E> comparator) {
            super(4);
            comparator.getClass();
            this.d = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.n.a, com.google.common.collect.i.b
        public final i.b a(Object obj) {
            super.a(obj);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.n.a
        /* JADX INFO: renamed from: g */
        public final n.a a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.n.a
        public final /* bridge */ /* synthetic */ n h() {
            throw null;
        }

        public final a0 i() {
            a0 a0Var;
            Object[] objArrCopyOf = this.a;
            int i = this.b;
            Comparator<? super E> comparator = this.d;
            if (i == 0) {
                a0Var = o.s(comparator);
            } else {
                int i2 = o.g;
                m96.b(i, objArrCopyOf);
                Arrays.sort(objArrCopyOf, 0, i, comparator);
                int i3 = 1;
                for (int i4 = 1; i4 < i; i4++) {
                    Object obj = objArrCopyOf[i4];
                    if (comparator.compare(obj, objArrCopyOf[i3 - 1]) != 0) {
                        objArrCopyOf[i3] = obj;
                        i3++;
                    }
                }
                Arrays.fill(objArrCopyOf, i3, i, (Object) null);
                if (i3 < objArrCopyOf.length / 2) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                }
                a0Var = new a0(j.k(i3, objArrCopyOf), comparator);
            }
            this.b = a0Var.h.size();
            this.c = true;
            return a0Var;
        }
    }

    public static final class b<E> implements Serializable {
        public final Comparator<? super E> b;
        public final Object[] c;

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.b = comparator;
            this.c = objArr;
        }

        public Object readResolve() {
            a aVar = new a(this.b);
            aVar.d(this.c);
            return aVar.i();
        }
    }

    public o(Comparator<? super E> comparator) {
        this.e = comparator;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> a0<E> s(Comparator<? super E> comparator) {
        if (hi5.b.equals(comparator)) {
            return (a0<E>) a0.i;
        }
        j.b bVar = j.c;
        return new a0<>(w.f, comparator);
    }

    public E ceiling(E e) {
        e.getClass();
        return (E) ya4.d(v(e, true).iterator(), null);
    }

    @Override // java.util.SortedSet, defpackage.t48
    public final Comparator<? super E> comparator() {
        return this.e;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        o<E> oVar = this.f;
        if (oVar != null) {
            return oVar;
        }
        a0 a0VarQ = q();
        this.f = a0VarQ;
        a0VarQ.f = this;
        return a0VarQ;
    }

    public E first() {
        return iterator().next();
    }

    public E floor(E e) {
        e.getClass();
        return (E) ya4.d(t(e, true).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        return t(obj, false);
    }

    public E higher(E e) {
        e.getClass();
        return (E) ya4.d(v(e, false).iterator(), null);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public E last() {
        return descendingIterator().next();
    }

    public E lower(E e) {
        e.getClass();
        return (E) ya4.d(t(e, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    public abstract a0 q();

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public abstract j.b descendingIterator();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        o8.e(this.e.compare(obj, obj2) <= 0);
        return u(obj, true, obj2, false);
    }

    public abstract a0 t(Object obj, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        return v(obj, true);
    }

    public abstract o<E> u(E e, boolean z, E e2, boolean z2);

    public abstract a0 v(Object obj, boolean z);

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public Object writeReplace() {
        return new b(this.e, toArray(i.b));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return t(obj, z);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return v(obj, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        o8.e(this.e.compare(obj, obj2) <= 0);
        return u(obj, z, obj2, z2);
    }
}
