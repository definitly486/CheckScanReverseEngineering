package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class E0 implements Kc {
    public final /* synthetic */ F0 a;
    public final /* synthetic */ AppMetricaConfig b;
    public final /* synthetic */ PublicLogger c;

    public E0(F0 f0, AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.a = f0;
        this.b = appMetricaConfig;
        this.c = publicLogger;
    }

    @Override // io.appmetrica.analytics.impl.Kc
    public final C1356wc a() {
        F0 f0 = this.a;
        C1234ri c1234ri = f0.g;
        AppMetricaConfig appMetricaConfig = this.b;
        PublicLogger publicLogger = this.c;
        P7 p7 = f0.i;
        return c1234ri.b(appMetricaConfig, publicLogger, new C1139o0(p7.j, p7.h));
    }
}
