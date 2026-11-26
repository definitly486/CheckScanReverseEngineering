package com.google.android.gms.internal.auth;

import android.os.StrictMode;
import androidx.collection.ArrayMap;
import defpackage.a1b;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdd implements a1b {
    public static final ArrayMap a = new ArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static zzdd a() {
        zzdd zzddVar;
        if (zzcc.zzb()) {
            throw null;
        }
        synchronized (zzdd.class) {
            try {
                zzddVar = (zzdd) a.get(null);
                if (zzddVar == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        throw null;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzddVar;
    }

    public static synchronized void b() {
        ArrayMap arrayMap = a;
        Iterator it = arrayMap.values().iterator();
        if (it.hasNext()) {
            ((zzdd) it.next()).getClass();
            throw null;
        }
        arrayMap.clear();
    }

    @Override // defpackage.a1b
    public final Object zzb(String str) {
        throw null;
    }
}
