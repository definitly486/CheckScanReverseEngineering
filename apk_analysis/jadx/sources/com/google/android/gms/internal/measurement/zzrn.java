package com.google.android.gms.internal.measurement;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrn {
    public static final Object a = new Object();
    public static Thread b;
    public static volatile Handler c;

    public static boolean zza(Thread thread) {
        Thread thread2 = b;
        if (thread2 == null) {
            thread2 = Looper.getMainLooper().getThread();
            b = thread2;
        }
        return thread == thread2;
    }

    public static Handler zzb() {
        if (c == null) {
            synchronized (a) {
                try {
                    if (c == null) {
                        c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }
}
