package io.appmetrica.analytics.coreapi.internal.data;

import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public interface TempCacheStorage {

    public interface Entry {
        byte[] getData();

        long getId();

        String getScope();

        long getTimestamp();
    }

    Entry get(String str);

    Collection<Entry> get(String str, int i);

    void put(String str, long j, byte[] bArr);

    void remove(long j);

    void removeOlderThan(String str, long j);
}
