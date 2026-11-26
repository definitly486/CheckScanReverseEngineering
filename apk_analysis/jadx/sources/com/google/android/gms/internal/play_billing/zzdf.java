package com.google.android.gms.internal.play_billing;

import defpackage.b4b;
import defpackage.j3b;
import defpackage.l6b;
import defpackage.r5b;
import defpackage.u4b;
import defpackage.zd3;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdf extends zd3 {
    public static zzdk zza(Object obj) {
        return new u4b(obj);
    }

    public static zzdk zzb(zzdk zzdkVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (zzdkVar.isDone()) {
            return zzdkVar;
        }
        l6b l6bVar = new l6b();
        l6bVar.i = zzdkVar;
        r5b r5bVar = new r5b();
        r5bVar.b = l6bVar;
        l6bVar.j = scheduledExecutorService.schedule(r5bVar, 28500L, timeUnit);
        zzdkVar.zzb(r5bVar, j3b.zza);
        return l6bVar;
    }

    public static void zzc(zzdk zzdkVar, zzdd zzddVar, Executor executor) {
        zzdkVar.zzb(new b4b(0, zzdkVar, zzddVar), executor);
    }
}
