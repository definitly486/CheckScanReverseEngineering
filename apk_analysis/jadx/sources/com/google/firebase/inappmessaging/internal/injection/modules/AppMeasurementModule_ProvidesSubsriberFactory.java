package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.events.Subscriber;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class AppMeasurementModule_ProvidesSubsriberFactory implements Factory<Subscriber> {
    private final AppMeasurementModule module;

    private AppMeasurementModule_ProvidesSubsriberFactory(AppMeasurementModule appMeasurementModule) {
        this.module = appMeasurementModule;
    }

    public static AppMeasurementModule_ProvidesSubsriberFactory create(AppMeasurementModule appMeasurementModule) {
        return new AppMeasurementModule_ProvidesSubsriberFactory(appMeasurementModule);
    }

    public static Subscriber providesSubsriber(AppMeasurementModule appMeasurementModule) {
        return (Subscriber) Preconditions.checkNotNullFromProvides(appMeasurementModule.providesSubsriber());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public Subscriber get() {
        return providesSubsriber(this.module);
    }
}
