package androidx.collection.internal;

import defpackage.jh2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class LruHashMap<K, V> {
    private final LinkedHashMap<K, V> map;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LruHashMap(LruHashMap<? extends K, V> lruHashMap) {
        this(0, 0.0f, 3, null);
        lruHashMap.getClass();
        for (Map.Entry<? extends K, V> entry : lruHashMap.getEntries()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public final V get(K k) {
        k.getClass();
        return this.map.get(k);
    }

    public final Set<Map.Entry<K, V>> getEntries() {
        Set<Map.Entry<K, V>> setEntrySet = this.map.entrySet();
        setEntrySet.getClass();
        return setEntrySet;
    }

    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    public final V put(K k, V v) {
        k.getClass();
        v.getClass();
        return this.map.put(k, v);
    }

    public final V remove(K k) {
        k.getClass();
        return this.map.remove(k);
    }

    public LruHashMap(int i, float f) {
        this.map = new LinkedHashMap<>(i, f, true);
    }

    public /* synthetic */ LruHashMap(int i, float f, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 16 : i, (i2 & 2) != 0 ? 0.75f : f);
    }

    public LruHashMap() {
        this(0, 0.0f, 3, null);
    }
}
