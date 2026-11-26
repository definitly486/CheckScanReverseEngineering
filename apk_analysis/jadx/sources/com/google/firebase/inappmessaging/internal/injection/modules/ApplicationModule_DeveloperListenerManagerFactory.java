package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import com.google.firebase.inappmessaging.internal.DeveloperListenerManager;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationModule_DeveloperListenerManagerFactory implements Factory<DeveloperListenerManager> {
    private final Provider<Executor> backgroundExecutorProvider;
    private final ApplicationModule module;

    private ApplicationModule_DeveloperListenerManagerFactory(ApplicationModule applicationModule, Provider<Executor> provider) {
        this.module = applicationModule;
        this.backgroundExecutorProvider = provider;
    }

    public static ApplicationModule_DeveloperListenerManagerFactory create(ApplicationModule applicationModule, Provider<Executor> provider) {
        return new ApplicationModule_DeveloperListenerManagerFactory(applicationModule, provider);
    }

    public static DeveloperListenerManager developerListenerManager(ApplicationModule applicationModule, Executor executor) {
        return (DeveloperListenerManager) Preconditions.checkNotNullFromProvides(applicationModule.developerListenerManager(executor));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public DeveloperListenerManager get() {
        return developerListenerManager(this.module, (Executor) this.backgroundExecutorProvider.get());
    }
}
