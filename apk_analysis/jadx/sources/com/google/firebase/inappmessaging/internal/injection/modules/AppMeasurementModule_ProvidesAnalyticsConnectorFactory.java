package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class AppMeasurementModule_ProvidesAnalyticsConnectorFactory implements Factory<AnalyticsConnector> {
    private final AppMeasurementModule module;

    private AppMeasurementModule_ProvidesAnalyticsConnectorFactory(AppMeasurementModule appMeasurementModule) {
        this.module = appMeasurementModule;
    }

    public static AppMeasurementModule_ProvidesAnalyticsConnectorFactory create(AppMeasurementModule appMeasurementModule) {
        return new AppMeasurementModule_ProvidesAnalyticsConnectorFactory(appMeasurementModule);
    }

    public static AnalyticsConnector providesAnalyticsConnector(AppMeasurementModule appMeasurementModule) {
        return (AnalyticsConnector) Preconditions.checkNotNullFromProvides(appMeasurementModule.providesAnalyticsConnector());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public AnalyticsConnector get() {
        return providesAnalyticsConnector(this.module);
    }
}
