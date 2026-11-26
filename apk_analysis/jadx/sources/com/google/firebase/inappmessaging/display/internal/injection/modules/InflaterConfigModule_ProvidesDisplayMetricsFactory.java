package com.google.firebase.inappmessaging.display.internal.injection.modules;

import android.app.Application;
import android.util.DisplayMetrics;
import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class InflaterConfigModule_ProvidesDisplayMetricsFactory implements Factory<DisplayMetrics> {
    private final Provider<Application> applicationProvider;
    private final InflaterConfigModule module;

    private InflaterConfigModule_ProvidesDisplayMetricsFactory(InflaterConfigModule inflaterConfigModule, Provider<Application> provider) {
        this.module = inflaterConfigModule;
        this.applicationProvider = provider;
    }

    public static InflaterConfigModule_ProvidesDisplayMetricsFactory create(InflaterConfigModule inflaterConfigModule, Provider<Application> provider) {
        return new InflaterConfigModule_ProvidesDisplayMetricsFactory(inflaterConfigModule, provider);
    }

    public static DisplayMetrics providesDisplayMetrics(InflaterConfigModule inflaterConfigModule, Application application) {
        return (DisplayMetrics) Preconditions.checkNotNullFromProvides(inflaterConfigModule.providesDisplayMetrics(application));
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public DisplayMetrics get() {
        return providesDisplayMetrics(this.module, (Application) this.applicationProvider.get());
    }
}
