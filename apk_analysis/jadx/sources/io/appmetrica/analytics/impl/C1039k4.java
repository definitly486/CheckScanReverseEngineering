package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.k4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1039k4 implements ModuleServiceConfig {
    public final SdkIdentifiers a;
    public final Object b;

    public C1039k4(SdkIdentifiers sdkIdentifiers, Object obj) {
        this.a = sdkIdentifiers;
        this.b = obj;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig
    public final Object getFeaturesConfig() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig
    public final SdkIdentifiers getIdentifiers() {
        return this.a;
    }
}
