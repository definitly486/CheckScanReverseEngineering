package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import io.appmetrica.analytics.internal.AppMetricaService;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Sk implements ServiceWakeLock {
    public final Context a;
    public final Rk b;
    public final HashMap c = new HashMap();

    public Sk(Context context, Rk rk) {
        this.a = context;
        this.b = rk;
    }

    public final String a(String str) {
        return defpackage.bj.c("io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK.", str);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock
    public final synchronized boolean acquireWakeLock(String str) {
        try {
            if (this.c.get(str) == null) {
                HashMap map = this.c;
                Rk rk = this.b;
                Context context = this.a;
                String strA = a(str);
                rk.a.getClass();
                Intent intent = new Intent(context, (Class<?>) AppMetricaService.class);
                intent.setAction(strA);
                Qk qk = new Qk();
                try {
                    context.bindService(intent, qk, 1);
                } catch (Throwable unused) {
                    qk = null;
                }
                map.put(str, qk);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c.get(str) != null;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock
    public final synchronized void releaseWakeLock(String str) {
        ServiceConnection serviceConnection = (ServiceConnection) this.c.get(str);
        if (serviceConnection != null) {
            Rk rk = this.b;
            a(str);
            Context context = this.a;
            rk.getClass();
            try {
                context.unbindService(serviceConnection);
            } catch (Throwable unused) {
            }
        }
    }
}
