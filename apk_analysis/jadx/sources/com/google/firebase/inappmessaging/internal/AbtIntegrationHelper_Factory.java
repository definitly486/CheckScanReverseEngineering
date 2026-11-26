package com.google.firebase.inappmessaging.internal;

import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class AbtIntegrationHelper_Factory implements Factory<AbtIntegrationHelper> {
    private final Provider<FirebaseABTesting> abTestingProvider;
    private final Provider<Executor> blockingExecutorProvider;

    private AbtIntegrationHelper_Factory(Provider<FirebaseABTesting> provider, Provider<Executor> provider2) {
        this.abTestingProvider = provider;
        this.blockingExecutorProvider = provider2;
    }

    public static AbtIntegrationHelper_Factory create(Provider<FirebaseABTesting> provider, Provider<Executor> provider2) {
        return new AbtIntegrationHelper_Factory(provider, provider2);
    }

    public static AbtIntegrationHelper newInstance(FirebaseABTesting firebaseABTesting, Executor executor) {
        return new AbtIntegrationHelper(firebaseABTesting, executor);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public AbtIntegrationHelper get() {
        return newInstance((FirebaseABTesting) this.abTestingProvider.get(), (Executor) this.blockingExecutorProvider.get());
    }
}
