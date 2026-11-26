package androidx.compose.runtime.external.kotlinx.collections.immutable;

import defpackage.re4;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface ImmutableMap<K, V> extends Map<K, V>, re4 {
    ImmutableSet<Map.Entry<K, V>> getEntries();

    ImmutableSet<K> getKeys();

    ImmutableCollection<V> getValues();
}
