package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.si, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1260si implements InterfaceC0840cb {
    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final Wa a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0) {
        return new Lc();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final Wa b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0) {
        return new Lc();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final void a(ReporterConfig reporterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final InterfaceC0814bb b(ReporterConfig reporterConfig) {
        return new C1183pi();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb, io.appmetrica.analytics.impl.InterfaceC0866db
    public final InterfaceC0840cb a() {
        return this;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final InterfaceC0917fb a(AppMetricaConfig appMetricaConfig) {
        return new C1183pi();
    }
}
