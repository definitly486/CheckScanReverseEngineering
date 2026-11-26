package androidx.compose.runtime.external.kotlinx.collections.immutable;

import defpackage.ue4;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface PersistentMap<K, V> extends ImmutableMap<K, V> {

    public interface Builder<K, V> extends Map<K, V>, ue4 {
        PersistentMap<K, V> build();
    }

    Builder<K, V> builder();

    @Override // java.util.Map
    PersistentMap<K, V> clear();

    @Override // java.util.Map
    PersistentMap<K, V> put(K k, V v);

    @Override // java.util.Map
    PersistentMap<K, V> putAll(Map<? extends K, ? extends V> map);

    @Override // java.util.Map
    PersistentMap<K, V> remove(K k);

    @Override // java.util.Map
    PersistentMap<K, V> remove(K k, V v);
}
