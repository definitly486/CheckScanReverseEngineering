package io.appmetrica.analytics.impl;

import defpackage.j59;
import defpackage.ti0;

/* JADX INFO: loaded from: classes5.dex */
public final class Rf implements Qf {
    private volatile String a;

    private final String b() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getProcessName", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            objInvoke.getClass();
            return (String) objInvoke;
        } catch (Throwable th) {
            ti0.f(th);
            return null;
        }
    }

    @Override // io.appmetrica.analytics.impl.Qf
    public String a() {
        if (this.a != null) {
            return this.a;
        }
        synchronized (this) {
            try {
                if (this.a == null) {
                    this.a = b();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.a;
    }
}
