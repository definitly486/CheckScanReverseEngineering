package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleConfig;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1185pk implements ServiceComponentModuleConfig {
    public final A4 a;

    public C1185pk(A4 a4) {
        this.a = a4;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleConfig
    public final boolean isRevenueAutoTrackingEnabled() {
        return ((Boolean) WrapUtils.getOrDefault(this.a.m, Boolean.TRUE)).booleanValue();
    }
}
