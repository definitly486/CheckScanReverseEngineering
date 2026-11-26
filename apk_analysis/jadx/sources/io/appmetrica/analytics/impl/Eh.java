package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import defpackage.j59;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Eh implements Callable {
    public static final Dh d = new Dh();
    public final C1242s0 a;
    public final InterfaceC1263sl b;
    public boolean c;

    public Eh(C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl) {
        this.a = c1242s0;
        this.b = interfaceC1263sl;
    }

    public void a() {
        IAppMetricaService iAppMetricaService;
        try {
            if (this.c) {
                return;
            }
            this.c = true;
            int i = 0;
            do {
                C1242s0 c1242s0 = this.a;
                synchronized (c1242s0) {
                    iAppMetricaService = c1242s0.d;
                }
                if (iAppMetricaService != null) {
                    try {
                        a(iAppMetricaService);
                        InterfaceC1263sl interfaceC1263sl = this.b;
                        if (interfaceC1263sl != null && !((C1209qi) interfaceC1263sl).a()) {
                            return;
                        }
                        this.a.d();
                        return;
                    } catch (RemoteException unused) {
                    }
                }
                i++;
                if (!c() || C0857d2.e.get()) {
                    break;
                }
            } while (i < 3);
            if (i >= 3) {
                this.a.a();
            }
        } catch (Throwable th) {
            a(th);
        }
    }

    public abstract void a(IAppMetricaService iAppMetricaService);

    public final C1242s0 b() {
        return this.a;
    }

    public boolean c() {
        C1242s0 c1242s0 = this.a;
        synchronized (c1242s0) {
            try {
                if (c1242s0.d == null) {
                    c1242s0.e = new CountDownLatch(1);
                    V1 v1 = c1242s0.h;
                    Context context = c1242s0.a;
                    v1.getClass();
                    Intent intentA = V1.a(context);
                    try {
                        c1242s0.g.b(c1242s0.a);
                        c1242s0.a.bindService(intentA, c1242s0.j, 1);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a.a(5000L);
        return true;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        a();
        return j59.a;
    }

    public final boolean d() {
        return this.c;
    }

    public void a(Throwable th) {
    }

    public final void a(boolean z) {
        this.c = z;
    }
}
