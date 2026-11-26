package com.google.common.collect;

import com.google.common.collect.c.b.a;
import com.tapjoy.TJAdUnitConstants;
import defpackage.cn1;
import defpackage.i05;
import defpackage.k05;
import defpackage.wa4;
import defpackage.ya4;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class q {

    public static abstract class a<K, V> extends d0.c<Map.Entry<K, V>> {
        public abstract Map<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            V v;
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Map<K, V> mapA = a();
            mapA.getClass();
            try {
                v = mapA.get(key);
            } catch (ClassCastException | NullPointerException unused) {
                v = null;
            }
            if (Objects.equals(v, entry.getValue())) {
                return v != null || a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.d0.c, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection<?> collection) {
            try {
                collection.getClass();
                return super.removeAll(collection);
            } catch (UnsupportedOperationException unused) {
                Iterator<?> it = collection.iterator();
                boolean zRemove = false;
                while (it.hasNext()) {
                    zRemove |= remove(it.next());
                }
                return zRemove;
            }
        }

        @Override // com.google.common.collect.d0.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection<?> collection) {
            try {
                collection.getClass();
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet(q.a(collection.size()));
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSet.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return a().size();
        }
    }

    public interface b<K, V1, V2> {
        V2 a(K k, V1 v1);
    }

    public static abstract class c<K, V> extends AbstractMap<K, V> {

        public class a extends a<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.q.a
            public final Map<K, V> a() {
                return c.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, V>> iterator() {
                return c.this.a();
            }
        }

        public abstract Iterator<Map.Entry<K, V>> a();

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            ya4.b(a());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }
    }

    public static class d<K, V> extends d0.c<K> {
        public final Map<K, V> b;

        public d(Map<K, V> map) {
            map.getClass();
            this.b = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.b.size();
        }
    }

    public static class e<K, V1, V2> extends c<K, V2> {
        public final Map<K, V1> b;
        public final b<? super K, ? super V1, V2> c;

        public e(Map<K, V1> map, b<? super K, ? super V1, V2> bVar) {
            map.getClass();
            this.b = map;
            this.c = bVar;
        }

        @Override // com.google.common.collect.q.c
        public final Iterator<Map.Entry<K, V2>> a() {
            return new wa4(this.b.entrySet().iterator(), new i05(this.c));
        }

        @Override // com.google.common.collect.q.c, java.util.AbstractMap, java.util.Map
        public final void clear() {
            this.b.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return this.b.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final V2 get(Object obj) {
            Map<K, V1> map = this.b;
            V1 v1 = map.get(obj);
            if (v1 != null || map.containsKey(obj)) {
                return this.c.a(obj, v1);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set<K> keySet() {
            return this.b.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final V2 remove(Object obj) {
            Map<K, V1> map = this.b;
            if (map.containsKey(obj)) {
                return this.c.a(obj, map.remove(obj));
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.b.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Collection<V2> values() {
            return new f(this);
        }
    }

    public static class f<K, V> extends AbstractCollection<V> {
        public final AbstractMap b;

        public f(AbstractMap abstractMap) {
            this.b = abstractMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.b.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new k05(this.b.entrySet().iterator(), 0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                AbstractMap abstractMap = this.b;
                for (Map.Entry<K, V> entry : abstractMap.entrySet()) {
                    if (Objects.equals(obj, entry.getValue())) {
                        abstractMap.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            try {
                collection.getClass();
                return super.removeAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                AbstractMap abstractMap = this.b;
                for (Map.Entry<K, V> entry : abstractMap.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return abstractMap.keySet().removeAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            try {
                collection.getClass();
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                AbstractMap abstractMap = this.b;
                for (Map.Entry<K, V> entry : abstractMap.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return abstractMap.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.b.size();
        }
    }

    public static abstract class g<K, V> extends AbstractMap<K, V> {
        public transient com.google.common.collect.c.b.a b;
        public transient f c;

        @Override // java.util.AbstractMap, java.util.Map
        public final Set<Map.Entry<K, V>> entrySet() {
            com.google.common.collect.c.b.a aVar = this.b;
            if (aVar != null) {
                return aVar;
            }
            com.google.common.collect.c.b.a aVar2 = ((com.google.common.collect.c.b) this).new a();
            this.b = aVar2;
            return aVar2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Collection<V> values() {
            f fVar = this.c;
            if (fVar != null) {
                return fVar;
            }
            f fVar2 = new f(this);
            this.c = fVar2;
            return fVar2;
        }
    }

    public static int a(int i) {
        if (i < 3) {
            cn1.b(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) Math.ceil(((double) i) / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    public static boolean b(Object obj, Map map) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static String c(Map<?, ?> map) {
        int size = map.size();
        cn1.b(size, TJAdUnitConstants.String.SIZE);
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }
}
