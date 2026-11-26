package defpackage;

import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cj3<K, V> extends mj3<K, V> implements ConcurrentMap<K, V> {
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V putIfAbsent(K k, V v) {
        return ((d05.b) this).f.putIfAbsent(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        return ((d05.b) this).f.remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V replace(K k, V v) {
        return ((d05.b) this).f.replace(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(K k, V v, V v2) {
        return ((d05.b) this).f.replace(k, v, v2);
    }
}
