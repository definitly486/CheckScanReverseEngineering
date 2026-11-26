package io.appmetrica.analytics.modulesapi.internal.service;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleRemoteConfig<T> {
    T getFeaturesConfig();

    SdkIdentifiers getIdentifiers();

    RemoteConfigMetaInfo getRemoteConfigMetaInfo();
}
