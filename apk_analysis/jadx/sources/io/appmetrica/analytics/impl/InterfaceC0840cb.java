package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.cb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public interface InterfaceC0840cb extends InterfaceC0866db {
    Wa a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0);

    @Override // io.appmetrica.analytics.impl.InterfaceC0866db
    /* synthetic */ InterfaceC0840cb a();

    InterfaceC0917fb a(AppMetricaConfig appMetricaConfig);

    void a(ReporterConfig reporterConfig);

    Wa b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0);

    InterfaceC0814bb b(ReporterConfig reporterConfig);
}
