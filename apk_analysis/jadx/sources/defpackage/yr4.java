package defpackage;

import com.google.common.collect.j;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class yr4 {

    public static final class a<T> extends b<T> implements RandomAccess {
    }

    public static class b<T> extends AbstractList<T> {
        public final List<T> b;

        public class a implements ListIterator<T> {
            public boolean b;
            public final /* synthetic */ ListIterator c;
            public final /* synthetic */ b d;

            public a(b bVar, ListIterator listIterator) {
                this.c = listIterator;
                this.d = bVar;
            }

            @Override // java.util.ListIterator
            public final void add(T t) {
                ListIterator listIterator = this.c;
                listIterator.add(t);
                listIterator.previous();
                this.b = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.c.hasPrevious();
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.c.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final T next() {
                ListIterator listIterator = this.c;
                if (listIterator.hasPrevious()) {
                    this.b = true;
                    return (T) listIterator.previous();
                }
                qz0.e();
                return null;
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.d.a(this.c.nextIndex());
            }

            @Override // java.util.ListIterator
            public final T previous() {
                ListIterator listIterator = this.c;
                if (listIterator.hasNext()) {
                    this.b = true;
                    return (T) listIterator.next();
                }
                qz0.e();
                return null;
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                cn1.c(this.b);
                this.c.remove();
                this.b = false;
            }

            @Override // java.util.ListIterator
            public final void set(T t) {
                o8.r(this.b);
                this.c.set(t);
            }
        }

        public b(List<T> list) {
            list.getClass();
            this.b = list;
        }

        public final int a(int i) {
            int size = this.b.size();
            o8.n(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i, T t) {
            this.b.add(a(i), t);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            this.b.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final T get(int i) {
            List<T> list = this.b;
            int size = list.size();
            o8.j(i, size);
            return list.get((size - 1) - i);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator<T> listIterator(int i) {
            return new a(this, this.b.listIterator(a(i)));
        }

        @Override // java.util.AbstractList, java.util.List
        public final T remove(int i) {
            List<T> list = this.b;
            int size = list.size();
            o8.j(i, size);
            return list.remove((size - 1) - i);
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final T set(int i, T t) {
            List<T> list = this.b;
            int size = list.size();
            o8.j(i, size);
            return list.set((size - 1) - i, t);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.b.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<T> subList(int i, int i2) {
            List<T> list = this.b;
            o8.o(i, i2, list.size());
            return yr4.b(list.subList(a(i2), a(i)));
        }
    }

    public static final class c<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        public final List<F> b;
        public final lm3<? super F, ? extends T> c;

        public class a extends z19<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator, 0);
            }

            @Override // defpackage.y19
            public final T a(F f) {
                return c.this.c.apply(f);
            }
        }

        public c(List<F> list, lm3<? super F, ? extends T> lm3Var) {
            list.getClass();
            this.b = list;
            this.c = lm3Var;
        }

        @Override // java.util.AbstractList, java.util.List
        public final T get(int i) {
            return this.c.apply(this.b.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator<T> listIterator(int i) {
            return new a(this.b.listIterator(i));
        }

        @Override // java.util.AbstractList, java.util.List
        public final T remove(int i) {
            return this.c.apply(this.b.remove(i));
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.b.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.b.size();
        }
    }

    public static final class d<F, T> extends AbstractSequentialList<T> implements Serializable {
        public final List<F> b;
        public final lm3<? super F, ? extends T> c;

        public class a extends z19<F, T> {
            public a(ListIterator listIterator) {
                super(listIterator, 0);
            }

            @Override // defpackage.y19
            public final T a(F f) {
                return d.this.c.apply(f);
            }
        }

        public d(List<F> list, lm3<? super F, ? extends T> lm3Var) {
            list.getClass();
            this.b = list;
            this.c = lm3Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator<T> listIterator(int i) {
            return new a(this.b.listIterator(i));
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.b.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.b.size();
        }
    }

    @SafeVarargs
    public static <E> ArrayList<E> a(E... eArr) {
        int length = eArr.length;
        cn1.b(length, "arraySize");
        ArrayList<E> arrayList = new ArrayList<>(fa4.Y(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <T> List<T> b(List<T> list) {
        if (list instanceof j) {
            return ((j) list).w();
        }
        if (list instanceof b) {
            return ((b) list).b;
        }
        return list instanceof RandomAccess ? new a(list) : new b(list);
    }

    public static AbstractList c(List list, lm3 lm3Var) {
        return list instanceof RandomAccess ? new c(list, lm3Var) : new d(list, lm3Var);
    }
}
