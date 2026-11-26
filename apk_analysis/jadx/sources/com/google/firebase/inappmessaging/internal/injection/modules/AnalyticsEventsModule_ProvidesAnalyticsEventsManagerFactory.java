package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import com.google.firebase.inappmessaging.internal.AnalyticsEventsManager;

/* JADX INFO: loaded from: classes4.dex */
public final class AnalyticsEventsModule_ProvidesAnalyticsEventsManagerFactory implements Factory<AnalyticsEventsManager> {
    private final Provider<AnalyticsConnector> analyticsConnectorProvider;
    private final AnalyticsEventsModule module;

    private AnalyticsEventsModule_ProvidesAnalyticsEventsManagerFactory(AnalyticsEventsModule analyticsEventsModule, Provider<AnalyticsConnector> provider) {
        this.module = analyticsEventsModule;
        this.analyticsConnectorProvider = provider;
    }

    public static AnalyticsEventsModule_ProvidesAnalyticsEventsManagerFactory create(AnalyticsEventsModule analyticsEventsModule, Provider<AnalyticsConnector> provider) {
        return new AnalyticsEventsModule_ProvidesAnalyticsEventsManagerFactory(analyticsEventsModule, provider);
    }

    public static AnalyticsEventsManager providesAnalyticsEventsManager(AnalyticsEventsModule analyticsEventsModule, AnalyticsConnector analyticsConnector) {
        return (AnalyticsEventsManager) Preconditions.checkNotNullFromProvides(analyticsEventsModule.providesAnalyticsEventsManager(analyticsConnector));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public AnalyticsEventsManager get() {
        return providesAnalyticsEventsManager(this.module, (AnalyticsConnector) this.analyticsConnectorProvider.get());
    }
}
