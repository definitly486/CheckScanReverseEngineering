package com.google.common.collect;

import defpackage.cn1;
import defpackage.m96;
import defpackage.o0;
import defpackage.o8;
import defpackage.y69;
import defpackage.ya4;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j<E> extends i<E> implements List<E>, RandomAccess {
    public static final b c = new b(0, w.f);

    public static final class a<E> extends i.a<E> {
        public a() {
            super(4);
        }

        @Override // com.google.common.collect.i.b
        public final i.b a(Object obj) {
            c(obj);
            return this;
        }

        public final w g() {
            this.c = true;
            return j.k(this.b, this.a);
        }
    }

    public static final class b<E> extends o0<E> {
        public final j<E> d;

        public b(int i, j jVar) {
            super(jVar.size(), i);
            this.d = jVar;
        }

        @Override // defpackage.o0
        public final E a(int i) {
            return this.d.get(i);
        }
    }

    public static final class d implements Serializable {
        public final Object[] b;

        public d(Object[] objArr) {
            this.b = objArr;
        }

        public Object readResolve() {
            return j.p(this.b);
        }
    }

    public static w k(int i, Object[] objArr) {
        return i == 0 ? w.f : new w(objArr, i);
    }

    public static <E> a<E> m(int i) {
        cn1.b(i, "expectedSize");
        return new a<>(i);
    }

    public static <E> j<E> n(Iterable<? extends E> iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return o((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return w.f;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return s(next);
        }
        a aVar = new a();
        aVar.c(next);
        while (it.hasNext()) {
            aVar.c(it.next());
        }
        return aVar.g();
    }

    public static <E> j<E> o(Collection<? extends E> collection) {
        if (!(collection instanceof i)) {
            Object[] array = collection.toArray();
            m96.b(array.length, array);
            return k(array.length, array);
        }
        j<E> jVarA = ((i) collection).a();
        if (!jVarA.i()) {
            return jVarA;
        }
        Object[] array2 = jVarA.toArray(i.b);
        return k(array2.length, array2);
    }

    public static w p(Object[] objArr) {
        if (objArr.length == 0) {
            return w.f;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        m96.b(objArr2.length, objArr2);
        return k(objArr2.length, objArr2);
    }

    public static w r(Long l, Long l2, Long l3, Long l4, Long l5) {
        Object[] objArr = {l, l2, l3, l4, l5};
        m96.b(5, objArr);
        return k(5, objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static w s(Object obj) {
        Object[] objArr = {obj};
        m96.b(1, objArr);
        return k(1, objArr);
    }

    public static w t(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        m96.b(2, objArr);
        return k(2, objArr);
    }

    public static w u(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        m96.b(3, objArr);
        return k(3, objArr);
    }

    @SafeVarargs
    public static w v(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        o8.f(objArr.length <= 2147483635, "the total number of elements must fit in an int");
        int length = objArr.length + 12;
        Object[] objArr2 = new Object[length];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
        m96.b(length, objArr2);
        return k(length, objArr2);
    }

    public static w x(Comparator comparator, List list) {
        List list2;
        comparator.getClass();
        if (list instanceof Collection) {
            list2 = list;
        } else {
            Iterator it = list.iterator();
            ArrayList arrayList = new ArrayList();
            ya4.a(arrayList, it);
            list2 = arrayList;
        }
        Object[] array = list2.toArray();
        m96.b(array.length, array);
        Arrays.sort(array, comparator);
        return k(array.length, array);
    }

    @Override // com.google.common.collect.i
    @Deprecated
    public final j<E> a() {
        return this;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.i
    public int b(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator<E> it = iterator();
                        Iterator<E> it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && Objects.equals(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i = 0; i < size; i++) {
                        if (Objects.equals(get(i), list.get(i))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // com.google.common.collect.i
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final b listIterator(int i) {
        o8.n(i, size());
        return isEmpty() ? c : new b(i, this);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e2) {
        throw new UnsupportedOperationException();
    }

    public j<E> w() {
        return size() <= 1 ? this : new c(this);
    }

    @Override // com.google.common.collect.i
    public Object writeReplace() {
        return new d(toArray(i.b));
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: y */
    public j<E> subList(int i, int i2) {
        o8.o(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? w.f : new e(i, i3);
    }

    public static final class c<E> extends j<E> {
        public final transient j<E> d;

        public c(j<E> jVar) {
            this.d = jVar;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.d.contains(obj);
        }

        @Override // java.util.List
        public final E get(int i) {
            j<E> jVar = this.d;
            o8.j(i, jVar.size());
            return jVar.get((jVar.size() - 1) - i);
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return this.d.i();
        }

        @Override // com.google.common.collect.j, java.util.List
        public final int indexOf(Object obj) {
            j<E> jVar = this.d;
            int iLastIndexOf = jVar.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return (jVar.size() - 1) - iLastIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.j, java.util.List
        public final int lastIndexOf(Object obj) {
            j<E> jVar = this.d;
            int iIndexOf = jVar.indexOf(obj);
            if (iIndexOf >= 0) {
                return (jVar.size() - 1) - iIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.j, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.d.size();
        }

        @Override // com.google.common.collect.j
        public final j<E> w() {
            return this.d;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override // com.google.common.collect.j, java.util.List
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public final j<E> subList(int i, int i2) {
            j<E> jVar = this.d;
            o8.o(i, i2, jVar.size());
            return jVar.subList(jVar.size() - i2, jVar.size() - i).w();
        }

        @Override // com.google.common.collect.j, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    public final class e extends j<E> {
        public final transient int d;
        public final transient int e;

        public e(int i, int i2) {
            this.d = i;
            this.e = i2;
        }

        @Override // com.google.common.collect.i
        public final Object[] d() {
            return j.this.d();
        }

        @Override // com.google.common.collect.i
        public final int f() {
            return j.this.g() + this.d + this.e;
        }

        @Override // com.google.common.collect.i
        public final int g() {
            return j.this.g() + this.d;
        }

        @Override // java.util.List
        public final E get(int i) {
            o8.j(i, this.e);
            return j.this.get(i + this.d);
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return true;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.j, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.e;
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override // com.google.common.collect.j, java.util.List
        /* JADX INFO: renamed from: y */
        public final j<E> subList(int i, int i2) {
            o8.o(i, i2, this.e);
            int i3 = this.d;
            return j.this.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.j, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }
}
