package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import defpackage.he7;

/* JADX INFO: loaded from: classes4.dex */
public final class SchedulerModule_ProvidesComputeSchedulerFactory implements Factory<he7> {
    private final SchedulerModule module;

    private SchedulerModule_ProvidesComputeSchedulerFactory(SchedulerModule schedulerModule) {
        this.module = schedulerModule;
    }

    public static SchedulerModule_ProvidesComputeSchedulerFactory create(SchedulerModule schedulerModule) {
        return new SchedulerModule_ProvidesComputeSchedulerFactory(schedulerModule);
    }

    public static he7 providesComputeScheduler(SchedulerModule schedulerModule) {
        return (he7) Preconditions.checkNotNullFromProvides(schedulerModule.providesComputeScheduler());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public he7 get() {
        return providesComputeScheduler(this.module);
    }
}
