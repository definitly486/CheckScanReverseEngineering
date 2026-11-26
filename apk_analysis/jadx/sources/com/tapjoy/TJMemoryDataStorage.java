package com.tapjoy;

import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class TJMemoryDataStorage {
    public static TJMemoryDataStorage b;
    public final WeakHashMap a = new WeakHashMap();

    public static TJMemoryDataStorage getInstance() {
        TJMemoryDataStorage tJMemoryDataStorage;
        TJMemoryDataStorage tJMemoryDataStorage2 = b;
        if (tJMemoryDataStorage2 != null) {
            return tJMemoryDataStorage2;
        }
        synchronized (TJMemoryDataStorage.class) {
            try {
                tJMemoryDataStorage = b;
                if (tJMemoryDataStorage == null) {
                    tJMemoryDataStorage = new TJMemoryDataStorage();
                    b = tJMemoryDataStorage;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tJMemoryDataStorage;
    }

    public Object get(String str) {
        return this.a.get(str);
    }

    public void put(String str, Object obj) {
        this.a.put(str, obj);
    }

    public Object remove(String str) {
        return this.a.remove(str);
    }
}
