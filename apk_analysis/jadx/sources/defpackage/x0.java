package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class x0<K, V> implements Map<K, V>, re4 {
    public static final a Companion = new a();
    private volatile Set<? extends K> _keys;
    private volatile Collection<? extends V> _values;

    public static final class a {
    }

    public static final class b extends o1<K> {
        public final /* synthetic */ x0<K, V> c;

        public static final class a implements Iterator<K>, re4 {
            public final /* synthetic */ Iterator<Map.Entry<K, V>> b;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.b = it;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public final K next() {
                return this.b.next().getKey();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(x0<K, ? extends V> x0Var) {
            this.c = x0Var;
        }

        @Override // defpackage.v, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.c.containsKey(obj);
        }

        @Override // defpackage.v
        public final int getSize() {
            return this.c.size();
        }

        @Override // defpackage.o1, defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<K> iterator() {
            return new a(this.c.entrySet().iterator());
        }
    }

    public static final class c extends v<V> {
        public final /* synthetic */ x0<K, V> c;

        public static final class a implements Iterator<V>, re4 {
            public final /* synthetic */ Iterator<Map.Entry<K, V>> b;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.b = it;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public final V next() {
                return this.b.next().getValue();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(x0<K, ? extends V> x0Var) {
            this.c = x0Var;
        }

        @Override // defpackage.v, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.c.containsValue(obj);
        }

        @Override // defpackage.v
        public final int getSize() {
            return this.c.size();
        }

        @Override // defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<V> iterator() {
            return new a(this.c.entrySet().iterator());
        }
    }

    private final Map.Entry<K, V> implFindEntry(K k) {
        Object next;
        Iterator<T> it = entrySet().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (aa4.e(((Map.Entry) next).getKey(), k)) {
                return (Map.Entry) next;
            }
        }
        next = null;
        return (Map.Entry) next;
    }

    private final String toString(Map.Entry<? extends K, ? extends V> entry) {
        return toString(entry.getKey()) + '=' + toString(entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$0(x0 x0Var, Map.Entry entry) {
        entry.getClass();
        return x0Var.toString(entry);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<?, ?> entry) {
        if (entry == null) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        V v = get(key);
        if (aa4.e(value, v)) {
            return v != null || containsKey(key);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return implFindEntry(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> setEntrySet = entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return false;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (aa4.e(((Map.Entry) it.next()).getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return true;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (!containsEntry$kotlin_stdlib((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object obj) {
        Map.Entry<K, V> entryImplFindEntry = implFindEntry(obj);
        if (entryImplFindEntry != null) {
            return entryImplFindEntry.getValue();
        }
        return null;
    }

    public abstract Set<Map.Entry<K, V>> getEntries();

    public Set<K> getKeys() {
        if (this._keys == null) {
            this._keys = new b(this);
        }
        Set<? extends K> set = this._keys;
        set.getClass();
        return set;
    }

    public int getSize() {
        return entrySet().size();
    }

    public Collection<V> getValues() {
        if (this._values == null) {
            this._values = new c(this);
        }
        Collection<? extends V> collection = this._values;
        collection.getClass();
        return collection;
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public V put(K k, V v) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public String toString() {
        return qn1.a0(entrySet(), ", ", "{", "}", 0, new w0(this, 0), 24);
    }

    private final String toString(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }
}
