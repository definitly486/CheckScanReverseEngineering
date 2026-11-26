package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class m2 {
    public final l2 a;
    public final E0 b;
    public final CountDownLatch c;

    public m2(l2 l2Var, E0 e0) {
        this.a = l2Var;
        l2.a(l2Var, e0.a());
        this.b = e0;
        this.c = new CountDownLatch(1);
    }

    public final void a(long j, TimeUnit timeUnit) {
        if (this.c.getCount() != 0) {
            E0 e0 = this.b;
            e0.b.post(new k2(this));
        }
        try {
            this.c.await(j, timeUnit);
        } catch (InterruptedException e) {
            PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
            Thread.currentThread().interrupt();
        }
    }
}
