package com.google.common.collect;

import defpackage.o8;
import defpackage.ya4;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h<E> extends AbstractCollection<E> implements t<E> {
    public transient a b;
    public transient b c;

    public final class a extends u.b<E> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<E> iterator() {
            return new d((f) h.this);
        }
    }

    public class b extends u.c<E> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<t.a<E>> iterator() {
            return new e((f) h.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ((f) h.this).d.c;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(E e) {
        ((f) this).a(1, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        if (collection instanceof t) {
            t tVar = (t) collection;
            if (tVar instanceof f) {
                f fVar = (f) tVar;
                if (!fVar.isEmpty()) {
                    int i = fVar.d.c == 0 ? -1 : 0;
                    while (i >= 0) {
                        v<E> vVar = fVar.d;
                        o8.j(i, vVar.c);
                        ((f) this).a(fVar.d.c(i), vVar.a[i]);
                        i++;
                        if (i >= fVar.d.c) {
                            i = -1;
                        }
                    }
                    return true;
                }
            } else if (!tVar.isEmpty()) {
                for (t.a<E> aVar : tVar.entrySet()) {
                    ((f) this).a(aVar.getCount(), aVar.a());
                }
                return true;
            }
        } else if (!collection.isEmpty()) {
            return ya4.a(this, collection.iterator());
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return ((f) this).d.b(obj) > 0;
    }

    @Override // com.google.common.collect.t
    public final Set<E> elementSet() {
        a aVar = this.b;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.b = aVar2;
        return aVar2;
    }

    @Override // com.google.common.collect.t
    public final Set<t.a<E>> entrySet() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.c = bVar2;
        return bVar2;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return u.a(this, obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return ((AbstractSet) entrySet()).hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return ((AbstractCollection) entrySet()).isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return ((f) this).d(1, obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        if (collection instanceof t) {
            collection = ((t) collection).elementSet();
        }
        return ((d0.c) elementSet()).removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        collection.getClass();
        if (collection instanceof t) {
            collection = ((t) collection).elementSet();
        }
        return ((d0.c) elementSet()).retainAll(collection);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
