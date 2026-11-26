package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1394y0 implements Pa {
    public final Handler a;
    public final IHandlerExecutor b;
    public final C1246s4 c;

    public C1394y0() {
        IHandlerExecutor iHandlerExecutorA = C1169p4.l().g().a();
        this.b = iHandlerExecutorA;
        this.a = iHandlerExecutorA.getHandler();
        this.c = new C1246s4();
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final C1246s4 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final Handler b() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final C0960h2 c() {
        return new C0960h2();
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final C1405yb d() {
        return new C1405yb();
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final ICommonExecutor getDefaultExecutor() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.Pa
    public final void a(AppMetricaConfig appMetricaConfig, InterfaceC0866db interfaceC0866db) {
    }
}
