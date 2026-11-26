package com.tapjoy.internal;

import defpackage.ll3;
import defpackage.nl3;
import defpackage.nu;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class o {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ScheduledExecutorService c;

    public o() {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(3);
        scheduledExecutorServiceNewScheduledThreadPool.getClass();
        this.c = scheduledExecutorServiceNewScheduledThreadPool;
    }

    public final void a(String str, long j, ll3 ll3Var, nl3 nl3Var) {
        str.getClass();
        ll3Var.getClass();
        nl3Var.getClass();
        Long l = (Long) this.b.get(str);
        boolean zContainsKey = this.a.containsKey(str);
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.a.get(str);
        boolean z = false;
        boolean z2 = (scheduledFuture == null || scheduledFuture.isDone() || scheduledFuture.isCancelled()) ? false : true;
        if (zContainsKey && z2 && l != null && l.longValue() == j) {
            return;
        }
        boolean zIsEmpty = this.a.isEmpty();
        boolean zContainsKey2 = this.a.containsKey(str);
        ScheduledFuture scheduledFuture2 = (ScheduledFuture) this.a.get(str);
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        this.a.remove(str);
        this.b.remove(str);
        if (zIsEmpty && !zContainsKey2 && !this.c.isShutdown()) {
            z = true;
        }
        this.a.put(str, this.c.scheduleWithFixedDelay(new nu(3, ll3Var, nl3Var), z ? 0L : j, j, TimeUnit.MILLISECONDS));
        this.b.put(str, Long.valueOf(j));
    }

    public static final void a(ll3 ll3Var, nl3 nl3Var) {
        nl3Var.invoke(ll3Var.invoke());
    }
}
