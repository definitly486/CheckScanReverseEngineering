package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1306uc extends AbstractC1007io {
    public final AppMetricaConfig b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1306uc(InterfaceC0866db interfaceC0866db, AppMetricaConfig appMetricaConfig) {
        super(interfaceC0866db);
        String str = appMetricaConfig.apiKey;
        this.b = appMetricaConfig;
    }

    public final InterfaceC0917fb a() {
        return this.a.a().a(this.b);
    }
}
