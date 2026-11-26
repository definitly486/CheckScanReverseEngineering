package io.appmetrica.analytics.modulesapi.internal.client;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ServiceConfigExtensionConfiguration<T> {
    public abstract BundleToServiceConfigConverter<T> getBundleConverter();

    public abstract ServiceConfigUpdateListener<T> getServiceConfigUpdateListener();
}
