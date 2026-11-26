package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C1392xn implements Bk, H9 {
    public final Sa a;
    public final InterfaceC0799am b;
    public final AtomicBoolean c = new AtomicBoolean(false);

    public C1392xn(Sa sa, InterfaceC0799am interfaceC0799am) {
        this.a = sa;
        this.b = interfaceC0799am;
        Objects.toString(sa.a());
    }

    public final void a(NetworkTask networkTask) {
        Fa.I.getClass();
        NetworkServiceLocator.getInstance().getNetworkCore().startTask(networkTask);
    }

    public final void b() {
        if (this.c.get()) {
            return;
        }
        g();
    }

    public final void c() {
        if (this.c.get()) {
            return;
        }
        f();
        a();
    }

    public final Sa d() {
        return this.a;
    }

    public final boolean e() {
        return this.c.get();
    }

    public void f() {
        this.b.a();
    }

    public void g() {
    }

    @Override // io.appmetrica.analytics.impl.Bk
    public final void onCreate() {
        this.c.compareAndSet(true, false);
    }

    @Override // io.appmetrica.analytics.impl.Bk
    public final void onDestroy() {
        if (this.c.compareAndSet(false, true)) {
            a();
        }
    }

    public void a() {
    }
}
