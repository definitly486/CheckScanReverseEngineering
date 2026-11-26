package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zzu;
import com.google.android.gms.tasks.Task;
import defpackage.ibc;
import defpackage.tec;
import defpackage.udc;
import defpackage.ycc;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv {
    public static zzv e;
    public final Context a;
    public final ScheduledExecutorService b;
    public ibc c = new ibc(this);
    public int d = 1;

    public zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.b = scheduledExecutorService;
        this.a = context.getApplicationContext();
    }

    public static synchronized zzv zza(Context context) {
        zzv zzvVar;
        zzvVar = e;
        if (zzvVar == null) {
            zzu.zza();
            zzvVar = new zzv(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
            e = zzvVar;
        }
        return zzvVar;
    }

    public final synchronized Task a(udc udcVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Queueing ".concat(udcVar.toString()));
            }
            if (!this.c.a(udcVar)) {
                ibc ibcVar = new ibc(this);
                this.c = ibcVar;
                ibcVar.a(udcVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return udcVar.b.getTask();
    }

    public final Task zzb(int i, Bundle bundle) {
        int i2;
        synchronized (this) {
            i2 = this.d;
            this.d = i2 + 1;
        }
        return a(new ycc(i2, i, bundle));
    }

    public final Task zzc(int i, Bundle bundle) {
        int i2;
        synchronized (this) {
            i2 = this.d;
            this.d = i2 + 1;
        }
        return a(new tec(i2, i, bundle));
    }
}
