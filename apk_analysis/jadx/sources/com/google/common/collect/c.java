package com.google.common.collect;

import defpackage.gg5;
import defpackage.ln;
import defpackage.o8;
import defpackage.ya4;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c<K, V> extends com.google.common.collect.g<K, V> implements Serializable {
    public transient Map<K, Collection<V>> f;
    public transient int g;

    public class a extends c<K, V>.AbstractC0131c<Map.Entry<K, V>> {
        @Override // com.google.common.collect.c.AbstractC0131c
        public final Object a(Object obj, Object obj2) {
            return new AbstractMap.SimpleImmutableEntry(obj, obj2);
        }
    }

    public class b extends q.g<K, Collection<V>> {
        public final transient Map<K, Collection<V>> d;

        public final class a extends q.a<K, Collection<V>> {
            public a() {
            }

            @Override // com.google.common.collect.q.a
            public final Map<K, Collection<V>> a() {
                return b.this;
            }

            @Override // com.google.common.collect.q.a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                Set<Map.Entry<K, Collection<V>>> setEntrySet = b.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return b.this.new C0130b();
            }

            @Override // com.google.common.collect.q.a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Collection<V> collectionRemove;
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                c cVar = c.this;
                Object key = entry.getKey();
                Map<K, Collection<V>> map = cVar.f;
                map.getClass();
                try {
                    collectionRemove = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    collectionRemove = null;
                }
                Collection<V> collection = collectionRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                cVar.g -= size;
                return true;
            }
        }

        /* JADX INFO: renamed from: com.google.common.collect.c$b$b, reason: collision with other inner class name */
        public final class C0130b implements Iterator<Map.Entry<K, Collection<V>>> {
            public final Iterator<Map.Entry<K, Collection<V>>> b;
            public Collection<V> c;

            public C0130b() {
                this.b = b.this.d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getValue();
                return b.this.a(next);
            }

            @Override // java.util.Iterator
            public final void remove() {
                o8.s(this.c != null, "no calls to next() since the last call to remove()");
                this.b.remove();
                c.this.g -= this.c.size();
                this.c.clear();
                this.c = null;
            }
        }

        public b(Map<K, Collection<V>> map) {
            this.d = map;
        }

        public final AbstractMap.SimpleImmutableEntry a(Map.Entry entry) {
            Object key = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            com.google.common.collect.a aVar = (com.google.common.collect.a) c.this;
            List list = (List) collection;
            return new AbstractMap.SimpleImmutableEntry(key, list instanceof RandomAccess ? new g(key, list, null) : new k(key, list, null));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            c cVar = c.this;
            if (this.d == cVar.f) {
                cVar.clear();
            } else {
                ya4.b(new C0130b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            Map<K, Collection<V>> map = this.d;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(Object obj) {
            return this == obj || this.d.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Collection<V> collection;
            Map<K, Collection<V>> map = this.d;
            map.getClass();
            try {
                collection = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                collection = null;
            }
            Collection<V> collection2 = collection;
            if (collection2 == null) {
                return null;
            }
            com.google.common.collect.a aVar = (com.google.common.collect.a) c.this;
            List list = (List) collection2;
            return list instanceof RandomAccess ? new g(obj, list, null) : new k(obj, list, null);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.d.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return c.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Collection<V> collectionRemove = this.d.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            c cVar = c.this;
            Collection<V> collectionM = cVar.m();
            collectionM.addAll(collectionRemove);
            cVar.g -= collectionRemove.size();
            collectionRemove.clear();
            return collectionM;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.d.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.d.toString();
        }
    }

    /* JADX INFO: renamed from: com.google.common.collect.c$c, reason: collision with other inner class name */
    public abstract class AbstractC0131c<T> implements Iterator<T> {
        public final Iterator<Map.Entry<K, Collection<V>>> b;
        public K c = null;
        public Collection<V> d = null;
        public Iterator<V> e = ya4.c.INSTANCE;

        public AbstractC0131c() {
            this.b = c.this.f.entrySet().iterator();
        }

        public abstract T a(K k, V v);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext() || this.e.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.e.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getKey();
                Collection<V> value = next.getValue();
                this.d = value;
                this.e = value.iterator();
            }
            return a(this.c, this.e.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.e.remove();
            Collection<V> collection = this.d;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.b.remove();
            }
            c.this.g--;
        }
    }

    public class d extends q.d<K, Collection<V>> {

        public class a implements Iterator<K> {
            public Map.Entry<K, Collection<V>> b;
            public final /* synthetic */ Iterator c;
            public final /* synthetic */ d d;

            public a(d dVar, Iterator it) {
                this.c = it;
                this.d = dVar;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.c.hasNext();
            }

            @Override // java.util.Iterator
            public final K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.c.next();
                this.b = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public final void remove() {
                o8.s(this.b != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.b.getValue();
                this.c.remove();
                c.this.g -= value.size();
                value.clear();
                this.b = null;
            }
        }

        public d(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ya4.b(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection<?> collection) {
            return this.b.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return this == obj || this.b.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.b.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a(this, this.b.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) this.b.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                c.this.g -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    public final class g extends c<K, V>.k implements RandomAccess {
    }

    public class h extends c<K, V>.b implements SortedMap<K, Collection<V>> {
        public SortedSet<K> f;
        public final /* synthetic */ gg5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(gg5 gg5Var, SortedMap sortedMap) {
            super(sortedMap);
            this.g = gg5Var;
        }

        public SortedSet<K> b() {
            return new i(this.g, d());
        }

        @Override // com.google.common.collect.c.b, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetB = b();
            this.f = sortedSetB;
            return sortedSetB;
        }

        @Override // java.util.SortedMap
        public final Comparator<? super K> comparator() {
            return d().comparator();
        }

        public SortedMap<K, Collection<V>> d() {
            return (SortedMap) this.d;
        }

        @Override // java.util.SortedMap
        public final K firstKey() {
            return d().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new h(this.g, d().headMap(k));
        }

        @Override // java.util.SortedMap
        public final K lastKey() {
            return d().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new h(this.g, d().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new h(this.g, d().tailMap(k));
        }
    }

    public class i extends c<K, V>.d implements SortedSet<K> {
        public final /* synthetic */ gg5 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(gg5 gg5Var, SortedMap sortedMap) {
            super(sortedMap);
            this.d = gg5Var;
        }

        public SortedMap<K, Collection<V>> a() {
            return (SortedMap) this.b;
        }

        @Override // java.util.SortedSet
        public final Comparator<? super K> comparator() {
            return a().comparator();
        }

        @Override // java.util.SortedSet
        public final K first() {
            return a().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new i(this.d, a().headMap(k));
        }

        @Override // java.util.SortedSet
        public final K last() {
            return a().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new i(this.d, a().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new i(this.d, a().tailMap(k));
        }
    }

    public c(Map<K, Collection<V>> map) {
        o8.e(map.isEmpty());
        this.f = map;
    }

    @Override // defpackage.eg5
    public final void clear() {
        Iterator<Collection<V>> it = this.f.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f.clear();
        this.g = 0;
    }

    @Override // com.google.common.collect.g
    public Map<K, Collection<V>> e() {
        return new b(this.f);
    }

    @Override // com.google.common.collect.g
    public final Collection<Map.Entry<K, V>> f() {
        return new com.google.common.collect.g.a();
    }

    @Override // com.google.common.collect.g
    public Set<K> g() {
        return new d(this.f);
    }

    @Override // com.google.common.collect.g
    public final Collection<V> i() {
        return new com.google.common.collect.g.b(this);
    }

    @Override // com.google.common.collect.g
    public final Iterator<Map.Entry<K, V>> j() {
        return new a();
    }

    public abstract Collection<V> m();

    public final void n(Map<K, Collection<V>> map) {
        this.f = map;
        this.g = 0;
        for (Collection<V> collection : map.values()) {
            o8.e(!collection.isEmpty());
            this.g = collection.size() + this.g;
        }
    }

    @Override // defpackage.eg5
    public final int size() {
        return this.g;
    }

    public class k extends c<K, V>.j implements List<V> {
        public k(K k, List<V> list, c<K, V>.j jVar) {
            super(k, list, jVar);
        }

        @Override // java.util.List
        public final void add(int i, V v) {
            b();
            boolean zIsEmpty = this.c.isEmpty();
            ((List) this.c).add(i, v);
            c.this.g++;
            if (zIsEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((List) this.c).addAll(i, collection);
            if (zAddAll) {
                c.this.g += this.c.size() - size;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public final V get(int i) {
            b();
            return (V) ((List) this.c).get(i);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            b();
            return ((List) this.c).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            b();
            return ((List) this.c).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator<V> listIterator() {
            b();
            return new a();
        }

        @Override // java.util.List
        public final V remove(int i) {
            b();
            V v = (V) ((List) this.c).remove(i);
            c.this.g--;
            c();
            return v;
        }

        @Override // java.util.List
        public final V set(int i, V v) {
            b();
            return (V) ((List) this.c).set(i, v);
        }

        @Override // java.util.List
        public final List<V> subList(int i, int i2) {
            b();
            List listSubList = ((List) this.c).subList(i, i2);
            c<K, V>.j jVar = this.d;
            if (jVar == null) {
                jVar = this;
            }
            boolean z = listSubList instanceof RandomAccess;
            c cVar = c.this;
            K k = this.b;
            return z ? new g(k, listSubList, jVar) : new k(k, listSubList, jVar);
        }

        @Override // java.util.List
        public final ListIterator<V> listIterator(int i) {
            b();
            return new a(i);
        }

        public final class a extends c<K, V>.j.a implements ListIterator<V> {
            public a(int i) {
                super(((List) k.this.c).listIterator(i));
            }

            @Override // java.util.ListIterator
            public final void add(V v) {
                k kVar = k.this;
                boolean zIsEmpty = kVar.isEmpty();
                b().add(v);
                c.this.g++;
                if (zIsEmpty) {
                    kVar.a();
                }
            }

            public final ListIterator<V> b() {
                a();
                return (ListIterator) this.b;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final V previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(V v) {
                b().set(v);
            }

            public a() {
                super();
            }
        }
    }

    public final class e extends c<K, V>.h implements NavigableMap<K, Collection<V>> {
        public final /* synthetic */ gg5 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(gg5 gg5Var, NavigableMap navigableMap) {
            super(gg5Var, navigableMap);
            this.h = gg5Var;
        }

        @Override // com.google.common.collect.c.h
        public final SortedSet b() {
            return new f(this.h, d());
        }

        @Override // com.google.common.collect.c.h
        /* JADX INFO: renamed from: c */
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = d().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return a(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public final K ceilingKey(K k) {
            return d().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> descendingKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> descendingMap() {
            return new e(this.h, d().descendingMap());
        }

        public final AbstractMap.SimpleImmutableEntry e(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection collectionM = this.h.m();
            collectionM.addAll((Collection) entry.getValue());
            it.remove();
            return new AbstractMap.SimpleImmutableEntry(entry.getKey(), Collections.unmodifiableList((List) collectionM));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = d().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return a(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = d().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return a(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public final K floorKey(K k) {
            return d().floorKey(k);
        }

        @Override // com.google.common.collect.c.h
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public final NavigableMap<K, Collection<V>> d() {
            return (NavigableMap) ((SortedMap) this.d);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new e(this.h, d().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = d().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return a(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public final K higherKey(K k) {
            return d().higherKey(k);
        }

        @Override // com.google.common.collect.c.h, com.google.common.collect.c.b, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = d().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return a(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = d().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return a(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public final K lowerKey(K k) {
            return d().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollFirstEntry() {
            return e(((b.a) entrySet()).iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollLastEntry() {
            return e(((b.a) ((q.g) descendingMap()).entrySet()).iterator());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new e(this.h, d().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new e(this.h, d().tailMap(k, z));
        }

        @Override // com.google.common.collect.c.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.c.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.c.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    public final class f extends c<K, V>.i implements NavigableSet<K> {
        public final /* synthetic */ gg5 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(gg5 gg5Var, NavigableMap navigableMap) {
            super(gg5Var, navigableMap);
            this.e = gg5Var;
        }

        @Override // com.google.common.collect.c.i
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final NavigableMap<K, Collection<V>> a() {
            return (NavigableMap) ((SortedMap) this.b);
        }

        @Override // java.util.NavigableSet
        public final K ceiling(K k) {
            return a().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public final Iterator<K> descendingIterator() {
            return ((d) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> descendingSet() {
            return new f(this.e, a().descendingMap());
        }

        @Override // java.util.NavigableSet
        public final K floor(K k) {
            return a().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> headSet(K k, boolean z) {
            return new f(this.e, a().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public final K higher(K k) {
            return a().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public final K lower(K k) {
            return a().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public final K pollFirst() {
            d.a aVar = (d.a) iterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k = (K) aVar.next();
            aVar.remove();
            return k;
        }

        @Override // java.util.NavigableSet
        public final K pollLast() {
            Iterator<K> itDescendingIterator = descendingIterator();
            if (!itDescendingIterator.hasNext()) {
                return null;
            }
            K next = itDescendingIterator.next();
            itDescendingIterator.remove();
            return next;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new f(this.e, a().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> tailSet(K k, boolean z) {
            return new f(this.e, a().tailMap(k, z));
        }

        @Override // com.google.common.collect.c.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.c.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.c.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    public class j extends AbstractCollection<V> {
        public final K b;
        public Collection<V> c;
        public final c<K, V>.j d;
        public final Collection<V> e;

        /* JADX WARN: Multi-variable type inference failed */
        public j(Object obj, List list, j jVar) {
            this.b = obj;
            this.c = list;
            this.d = jVar;
            this.e = jVar == null ? null : jVar.c;
        }

        public final void a() {
            c<K, V>.j jVar = this.d;
            if (jVar != null) {
                jVar.a();
            } else {
                c.this.f.put(this.b, this.c);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(V v) {
            b();
            boolean zIsEmpty = this.c.isEmpty();
            boolean zAdd = this.c.add(v);
            if (zAdd) {
                c.this.g++;
                if (zIsEmpty) {
                    a();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.c.addAll(collection);
            if (zAddAll) {
                c.this.g += this.c.size() - size;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        public final void b() {
            Collection<V> collection;
            c<K, V>.j jVar = this.d;
            if (jVar != null) {
                jVar.b();
                if (jVar.c == this.e) {
                    return;
                }
                ln.e();
                return;
            }
            if (!this.c.isEmpty() || (collection = c.this.f.get(this.b)) == null) {
                return;
            }
            this.c = collection;
        }

        public final void c() {
            c<K, V>.j jVar = this.d;
            if (jVar != null) {
                jVar.c();
            } else if (this.c.isEmpty()) {
                c.this.f.remove(this.b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.c.clear();
            c.this.g -= size;
            c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            b();
            return this.c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            b();
            return this.c.containsAll(collection);
        }

        @Override // java.util.Collection
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            b();
            return this.c.equals(obj);
        }

        @Override // java.util.Collection
        public final int hashCode() {
            b();
            return this.c.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            b();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            b();
            boolean zRemove = this.c.remove(obj);
            if (zRemove) {
                c.this.g--;
                c();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.c.removeAll(collection);
            if (zRemoveAll) {
                c.this.g += this.c.size() - size;
                c();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            collection.getClass();
            int size = size();
            boolean zRetainAll = this.c.retainAll(collection);
            if (zRetainAll) {
                c.this.g += this.c.size() - size;
                c();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            b();
            return this.c.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            b();
            return this.c.toString();
        }

        public class a implements Iterator<V> {
            public final Iterator<V> b;
            public final Collection<V> c;

            public a() {
                Collection<V> collection = j.this.c;
                this.c = collection;
                this.b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
            }

            public final void a() {
                j jVar = j.this;
                jVar.b();
                if (jVar.c == this.c) {
                    return;
                }
                ln.e();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public final V next() {
                a();
                return this.b.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.b.remove();
                j jVar = j.this;
                c.this.g--;
                jVar.c();
            }

            public a(ListIterator listIterator) {
                this.c = j.this.c;
                this.b = listIterator;
            }
        }
    }
}
