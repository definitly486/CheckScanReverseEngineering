package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import defpackage.kg2;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0879e {
    public static final long g = 1000;
    public static final String h = "WatchDog-" + Ld.a.incrementAndGet();
    public final CopyOnWriteArrayList a;
    public final AtomicInteger b;
    public final Handler c;
    public C0854d d;
    public final AtomicBoolean e;
    public final Runnable f;

    public C0879e(Sb sb) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.a = copyOnWriteArrayList;
        this.b = new AtomicInteger();
        this.c = new Handler(Looper.getMainLooper());
        this.e = new AtomicBoolean();
        this.f = new kg2(this, 3);
        copyOnWriteArrayList.add(sb);
    }

    public final synchronized void a(int i) {
        AtomicInteger atomicInteger = this.b;
        int i2 = 5;
        if (i >= 5) {
            i2 = i;
        }
        atomicInteger.set(i2);
        if (this.d == null) {
            C0854d c0854d = new C0854d(this);
            this.d = c0854d;
            try {
                c0854d.setName(h);
            } catch (SecurityException unused) {
            }
            this.d.start();
            PublicLogger.getAnonymousInstance().info("Start ANR monitoring with timeout: %s seconds", Integer.valueOf(i));
        }
    }

    public final synchronized void b() {
        C0854d c0854d = this.d;
        if (c0854d != null) {
            c0854d.a.set(false);
            this.d = null;
            PublicLogger.getAnonymousInstance().info("Stop ANR monitoring", new Object[0]);
        }
    }

    public final /* synthetic */ void a() {
        this.e.set(true);
    }
}
