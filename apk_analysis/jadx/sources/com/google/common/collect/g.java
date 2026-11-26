package com.google.common.collect;

import defpackage.eg5;
import defpackage.hg5;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g<K, V> implements eg5<K, V> {
    public transient Collection<Map.Entry<K, V>> b;
    public transient Set<K> c;
    public transient Collection<V> d;
    public transient Map<K, Collection<V>> e;

    public class a extends hg5<K, V> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return g.this.j();
        }
    }

    public final class b extends AbstractCollection<V> {
        public final /* synthetic */ c b;

        public b(c cVar) {
            this.b = cVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.b.d(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new com.google.common.collect.b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.b.g;
        }
    }

    @Override // defpackage.eg5
    public Collection<Map.Entry<K, V>> a() {
        Collection<Map.Entry<K, V>> collection = this.b;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionF = f();
        this.b = collectionF;
        return collectionF;
    }

    @Override // defpackage.eg5
    public Map<K, Collection<V>> b() {
        Map<K, Collection<V>> map = this.e;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapE = e();
        this.e = mapE;
        return mapE;
    }

    public boolean d(Object obj) {
        Iterator<Collection<V>> it = b().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map<K, Collection<V>> e();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof eg5) {
            return b().equals(((eg5) obj).b());
        }
        return false;
    }

    public abstract Collection<Map.Entry<K, V>> f();

    public abstract Set<K> g();

    public final int hashCode() {
        return b().hashCode();
    }

    public abstract Collection<V> i();

    @Override // defpackage.eg5
    public boolean isEmpty() {
        return size() == 0;
    }

    public abstract Iterator<Map.Entry<K, V>> j();

    /* JADX WARN: Multi-variable type inference failed */
    public final void k(String str, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        get(str).addAll(arrayList);
    }

    @Override // defpackage.eg5
    public Set<K> keySet() {
        Set<K> set = this.c;
        if (set != null) {
            return set;
        }
        Set<K> setG = g();
        this.c = setG;
        return setG;
    }

    @Override // defpackage.eg5
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = b().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public final String toString() {
        return b().toString();
    }

    @Override // defpackage.eg5
    public Collection<V> values() {
        Collection<V> collection = this.d;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionI = i();
        this.d = collectionI;
        return collectionI;
    }
}
