package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1375x6 {
    public final Ei a;
    public final Mh b;

    public C1375x6(Pf pf, O8 o8, Ei ei, AppMetricaConfig appMetricaConfig) {
        this.a = ei;
        this.b = new Mh(pf, new CounterConfiguration(appMetricaConfig, CounterConfigurationReporterType.CRASH), o8, appMetricaConfig.userProfileID);
    }

    public final Mh a() {
        return this.b;
    }
}
