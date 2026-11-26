package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import defpackage.he7;

/* JADX INFO: loaded from: classes4.dex */
public final class SchedulerModule_ProvidesMainThreadSchedulerFactory implements Factory<he7> {
    private final SchedulerModule module;

    private SchedulerModule_ProvidesMainThreadSchedulerFactory(SchedulerModule schedulerModule) {
        this.module = schedulerModule;
    }

    public static SchedulerModule_ProvidesMainThreadSchedulerFactory create(SchedulerModule schedulerModule) {
        return new SchedulerModule_ProvidesMainThreadSchedulerFactory(schedulerModule);
    }

    public static he7 providesMainThreadScheduler(SchedulerModule schedulerModule) {
        return (he7) Preconditions.checkNotNullFromProvides(schedulerModule.providesMainThreadScheduler());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public he7 get() {
        return providesMainThreadScheduler(this.module);
    }
}
