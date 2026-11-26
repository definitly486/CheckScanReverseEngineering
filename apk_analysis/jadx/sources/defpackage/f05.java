package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import yads.cl5;
import yads.dk5;

/* JADX INFO: loaded from: classes3.dex */
public final class f05<K, V> implements e05<K, V> {
    public final Map<K, V> b;

    public f05(Map map, gf0 gf0Var) {
        this.b = map;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.b.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return this.b.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return this.b.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.e05
    public final V f(K k) {
        Map<K, V> map = this.b;
        V v = map.get(k);
        return (v != null || map.containsKey(k)) ? v : (V) cl5.a((dk5) k);
    }

    @Override // java.util.Map
    public final V get(Object obj) {
        return this.b.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // defpackage.e05
    public final Map<K, V> i() {
        return this.b;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return this.b.keySet();
    }

    @Override // java.util.Map
    public final V put(K k, V v) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.b.size();
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return this.b.values();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
