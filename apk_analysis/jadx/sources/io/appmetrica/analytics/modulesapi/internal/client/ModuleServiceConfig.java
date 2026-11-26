package io.appmetrica.analytics.modulesapi.internal.client;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleServiceConfig<T> {
    T getFeaturesConfig();

    SdkIdentifiers getIdentifiers();
}
