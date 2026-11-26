package com.google.firebase.inappmessaging.internal.injection.modules;

import android.app.Application;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import defpackage.kw1;

/* JADX INFO: loaded from: classes4.dex */
public final class ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory implements Factory<kw1<String>> {
    private final Provider<Application> applicationProvider;
    private final ForegroundFlowableModule module;

    private ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory(ForegroundFlowableModule foregroundFlowableModule, Provider<Application> provider) {
        this.module = foregroundFlowableModule;
        this.applicationProvider = provider;
    }

    public static ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory create(ForegroundFlowableModule foregroundFlowableModule, Provider<Application> provider) {
        return new ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory(foregroundFlowableModule, provider);
    }

    public static kw1<String> providesAppForegroundEventStream(ForegroundFlowableModule foregroundFlowableModule, Application application) {
        return (kw1) Preconditions.checkNotNullFromProvides(foregroundFlowableModule.providesAppForegroundEventStream(application));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public kw1<String> get() {
        return providesAppForegroundEventStream(this.module, (Application) this.applicationProvider.get());
    }
}
