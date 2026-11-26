package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1073lc implements LocationReceiverProviderFactory {
    public final C1099mc a = new C1099mc();

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory
    public final LocationReceiverProvider getPassiveLocationReceiverProvider() {
        return this.a;
    }
}
