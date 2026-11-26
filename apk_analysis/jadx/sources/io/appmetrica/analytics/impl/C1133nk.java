package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1133nk {
    public volatile long a;
    public C1102mf b;
    public TimeProvider c;

    public static C1133nk c() {
        return AbstractC1107mk.a;
    }

    public final synchronized void a(long j, Long l) {
        try {
            this.a = (j - this.c.currentTimeMillis()) / 1000;
            boolean z = true;
            if (this.b.b(true)) {
                if (l != null) {
                    long jAbs = Math.abs(j - this.c.currentTimeMillis());
                    C1102mf c1102mf = this.b;
                    if (jAbs <= TimeUnit.SECONDS.toMillis(l.longValue())) {
                        z = false;
                    }
                    c1102mf.d(z);
                } else {
                    this.b.d(false);
                }
            }
            this.b.b(this.a);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        this.b.d(false);
    }

    public final synchronized long d() {
        return this.a;
    }

    public final synchronized void e() {
        a(Fa.I.y(), new SystemTimeProvider());
    }

    public final synchronized boolean f() {
        return this.b.b(true);
    }

    public final synchronized long a() {
        return (System.currentTimeMillis() / 1000) + this.a;
    }

    public final void a(C1102mf c1102mf, TimeProvider timeProvider) {
        this.b = c1102mf;
        this.a = c1102mf.a(0);
        this.c = timeProvider;
    }
}
