package io.appmetrica.analytics.coreutils.internal.buffering;

import defpackage.kx2;
import defpackage.n05;
import defpackage.u96;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class MapMergingBuffer<K, V> implements TaskBuffer<Map<K, ? extends V>> {
    private final LinkedHashMap a = new LinkedHashMap();

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public List<Map<K, V>> getAndClear() {
        if (this.a.isEmpty()) {
            return kx2.b;
        }
        Map mapL = n05.l(this.a);
        this.a.clear();
        return u96.h(mapL);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public void add(Map<K, ? extends V> map) {
        this.a.putAll(map);
    }
}
