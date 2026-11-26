package io.appmetrica.analytics.modulesapi.internal.service;

import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider;
import io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi;

/* JADX INFO: loaded from: classes5.dex */
public interface ServiceNetworkContext {
    IExecutionPolicy getExecutionPolicy();

    SimpleNetworkApi getNetworkApi();

    SslSocketFactoryProvider getSslSocketFactoryProvider();

    String getUserAgent();
}
