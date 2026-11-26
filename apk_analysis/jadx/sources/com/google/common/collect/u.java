package com.google.common.collect;

import defpackage.cn1;
import defpackage.qz0;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class u {

    public static abstract class a<E> implements t.a<E> {
        public final boolean equals(Object obj) {
            if (!(obj instanceof t.a)) {
                return false;
            }
            t.a aVar = (t.a) obj;
            v.a aVar2 = (v.a) this;
            return aVar2.getCount() == aVar.getCount() && Objects.equals(aVar2.a, aVar.a());
        }

        public final int hashCode() {
            v.a aVar = (v.a) this;
            K k = aVar.a;
            return aVar.getCount() ^ (k == 0 ? 0 : k.hashCode());
        }

        public final String toString() {
            v.a aVar = (v.a) this;
            String strValueOf = String.valueOf(aVar.a);
            int count = aVar.getCount();
            if (count == 1) {
                return strValueOf;
            }
            return strValueOf + " x " + count;
        }
    }

    public static abstract class b<E> extends d0.c<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ((f) h.this).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return h.this.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection<?> collection) {
            return h.this.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return h.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return ((f) h.this).d(Integer.MAX_VALUE, obj) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ((h.b) h.this.entrySet()).size();
        }
    }

    public static abstract class c<E> extends d0.c<t.a<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ((f) h.this).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof t.a)) {
                return false;
            }
            t.a aVar = (t.a) obj;
            if (aVar.getCount() <= 0) {
                return false;
            }
            return ((f) h.this).d.b(aVar.a()) == aVar.getCount();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj instanceof t.a) {
                t.a aVar = (t.a) obj;
                Object objA = aVar.a();
                int count = aVar.getCount();
                if (count != 0) {
                    f fVar = (f) h.this;
                    cn1.b(count, "oldCount");
                    cn1.b(0, "newCount");
                    int iD = fVar.d.d(objA);
                    if (iD == -1) {
                        if (count == 0) {
                            return true;
                        }
                    } else if (fVar.d.c(iD) == count) {
                        fVar.d.g(iD);
                        fVar.e -= (long) count;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static final class d<E> implements Iterator<E> {
        public final f b;
        public final Iterator<t.a<E>> c;
        public t.a<E> d;
        public int e;
        public int f;
        public boolean g;

        public d(f fVar, Iterator it) {
            this.b = fVar;
            this.c = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.e > 0 || this.c.hasNext();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (!hasNext()) {
                qz0.e();
                return null;
            }
            int count = this.e;
            if (count == 0) {
                t.a<E> next = this.c.next();
                this.d = next;
                count = next.getCount();
                this.e = count;
                this.f = count;
            }
            this.e = count - 1;
            this.g = true;
            t.a<E> aVar = this.d;
            Objects.requireNonNull(aVar);
            return aVar.a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            cn1.c(this.g);
            if (this.f == 1) {
                this.c.remove();
            } else {
                t.a<E> aVar = this.d;
                Objects.requireNonNull(aVar);
                this.b.remove(aVar.a());
            }
            this.f--;
            this.g = false;
        }
    }

    public static boolean a(t<?> tVar, Object obj) {
        if (obj == tVar) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar2 = (t) obj;
        if (tVar.size() != tVar2.size() || tVar.entrySet().size() != tVar2.entrySet().size()) {
            return false;
        }
        for (t.a aVar : tVar2.entrySet()) {
            if (tVar.count(aVar.a()) != aVar.getCount()) {
                return false;
            }
        }
        return true;
    }
}
