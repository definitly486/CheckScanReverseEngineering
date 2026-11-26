package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;

/* JADX INFO: loaded from: classes5.dex */
public interface Pa {
    C1246s4 a();

    void a(AppMetricaConfig appMetricaConfig, InterfaceC0866db interfaceC0866db);

    Handler b();

    C0960h2 c();

    C1405yb d();

    ICommonExecutor getDefaultExecutor();
}
