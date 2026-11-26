package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Looper;
import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class Gi implements InterfaceC1288tk {
    public static final Fi e = new Fi();
    public static final long f = 1000;
    public static final long g = 4000;
    public final C1242s0 a;
    public final C1159ok b;
    public final TimeProvider c;
    public final ICommonExecutor d;

    public Gi(C1242s0 c1242s0, C1159ok c1159ok, TimeProvider timeProvider) {
        this.a = c1242s0;
        this.b = c1159ok;
        this.c = timeProvider;
        this.d = C1169p4.l().g().c();
    }

    public final void a(Ch ch) {
        ICommonExecutor iCommonExecutor = this.d;
        boolean z = ch.b;
        C1159ok c1159ok = this.b;
        iCommonExecutor.submit(z ? new C1119n6(c1159ok.a, c1159ok.b, c1159ok.c, ch, true) : new Sg(c1159ok.b, c1159ok.c, ch));
    }

    public final void b(Ch ch) {
        long jUptimeMillis = this.c.uptimeMillis();
        C1159ok c1159ok = this.b;
        C1119n6 c1119n6 = new C1119n6(c1159ok.a, c1159ok.b, c1159ok.c, ch, false);
        long j = aa4.e(Looper.myLooper(), Looper.getMainLooper()) ? f : g;
        if (this.a.b()) {
            try {
                this.d.submit(c1119n6).get(j, TimeUnit.MILLISECONDS);
            } catch (Throwable unused) {
            }
        }
        if (c1119n6.c) {
            return;
        }
        try {
            c1119n6.a();
            Thread.sleep(Math.max(0L, j - (this.c.uptimeMillis() - jUptimeMillis)));
        } catch (Throwable unused2) {
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1288tk
    public final void reportData(int i, Bundle bundle) {
        ICommonExecutor iCommonExecutor = this.d;
        C1159ok c1159ok = this.b;
        iCommonExecutor.submit(new Zn(c1159ok.b, c1159ok.c, i, bundle));
    }

    public Gi(C1242s0 c1242s0, C1159ok c1159ok) {
        this(c1242s0, c1159ok, new SystemTimeProvider());
    }

    public final void a(Pf pf) {
        ICommonExecutor iCommonExecutor = this.d;
        C1159ok c1159ok = this.b;
        iCommonExecutor.submit(new Be(c1159ok.b, c1159ok.c, pf));
    }

    public final void b(Pf pf) {
        ICommonExecutor iCommonExecutor = this.d;
        C1159ok c1159ok = this.b;
        iCommonExecutor.submit(new Mi(c1159ok.b, c1159ok.c, pf));
    }
}
