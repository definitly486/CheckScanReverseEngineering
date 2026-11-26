package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1242s0 {
    public static final long k = 10000;
    public final Context a;
    public final ICommonExecutor b;
    public boolean c;
    public IAppMetricaService d;
    public CountDownLatch e;
    public final Object f;
    public final U1 g;
    public final V1 h;
    public final RunnableC1191q0 i;
    public final ServiceConnectionC1216r0 j;

    public C1242s0(Context context, ICommonExecutor iCommonExecutor, U1 u1, V1 v1) {
        this.d = null;
        this.f = new Object();
        this.i = new RunnableC1191q0(this);
        this.j = new ServiceConnectionC1216r0(this);
        this.a = context.getApplicationContext();
        this.b = iCommonExecutor;
        this.c = false;
        this.g = u1;
        this.h = v1;
    }

    public final void a(Long l) {
        try {
            synchronized (this) {
                try {
                    CountDownLatch countDownLatch = this.e;
                    if (countDownLatch == null) {
                        return;
                    }
                    countDownLatch.await(l.longValue(), TimeUnit.MILLISECONDS);
                    synchronized (this) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (InterruptedException unused) {
        }
    }

    public final synchronized boolean b() {
        return this.d != null;
    }

    public final void c() {
        synchronized (this.f) {
            this.b.remove(this.i);
        }
    }

    public final void d() {
        ICommonExecutor iCommonExecutor = this.b;
        synchronized (this.f) {
            try {
                iCommonExecutor.remove(this.i);
                if (!this.c) {
                    iCommonExecutor.executeDelayed(this.i, k);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void a() {
    }

    public C1242s0(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, C1169p4.l().e(), new V1());
    }
}
