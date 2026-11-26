package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.internal.time.Clock;

/* JADX INFO: loaded from: classes4.dex */
public final class SystemClockModule_ProvidesSystemClockModuleFactory implements Factory<Clock> {
    private final SystemClockModule module;

    private SystemClockModule_ProvidesSystemClockModuleFactory(SystemClockModule systemClockModule) {
        this.module = systemClockModule;
    }

    public static SystemClockModule_ProvidesSystemClockModuleFactory create(SystemClockModule systemClockModule) {
        return new SystemClockModule_ProvidesSystemClockModuleFactory(systemClockModule);
    }

    public static Clock providesSystemClockModule(SystemClockModule systemClockModule) {
        return (Clock) Preconditions.checkNotNullFromProvides(systemClockModule.providesSystemClockModule());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public Clock get() {
        return providesSystemClockModule(this.module);
    }
}
