package com.google.android.gms.common.config;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import defpackage.dwa;
import defpackage.dza;
import defpackage.ioa;
import defpackage.t8b;
import defpackage.x2b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GservicesValue<T> {
    public static final Object c = new Object();
    public final Object a;
    public Object b = null;

    public GservicesValue(String str, Object obj) {
        this.a = obj;
    }

    public static boolean isInitialized() {
        synchronized (c) {
        }
        return false;
    }

    public static GservicesValue<Boolean> value(String str, boolean z) {
        return new ioa(str, Boolean.valueOf(z));
    }

    public abstract Object a();

    public final T get() {
        T t = (T) this.b;
        if (t != null) {
            return t;
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        Object obj = c;
        synchronized (obj) {
        }
        synchronized (obj) {
        }
        try {
            try {
                a();
                throw null;
            } catch (SecurityException unused) {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    a();
                    throw null;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            throw th2;
        }
    }

    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    public void override(T t) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.b = t;
        Object obj = c;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    public void resetOverride() {
        this.b = null;
    }

    public static GservicesValue<Integer> value(String str, Integer num) {
        return new dza(str, num);
    }

    public static GservicesValue<Long> value(String str, Long l) {
        return new dwa(str, l);
    }

    public static GservicesValue<String> value(String str, String str2) {
        return new t8b(str, str2);
    }

    public static GservicesValue<Float> value(String str, Float f) {
        return new x2b(str, f);
    }
}
