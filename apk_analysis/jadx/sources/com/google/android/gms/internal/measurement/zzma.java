package com.google.android.gms.internal.measurement;

import androidx.collection.ArrayMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzma {
    public static final ArrayMap a = new ArrayMap();

    public static synchronized void a() {
        ArrayMap arrayMap = a;
        Iterator it = arrayMap.values().iterator();
        if (it.hasNext()) {
            ((zzma) it.next()).getClass();
            throw null;
        }
        arrayMap.clear();
    }
}
