package com.google.firebase.perf.injection.modules;

import com.google.firebase.inject.Provider;
import defpackage.t29;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesTransportFactoryProviderFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesTransportFactoryProviderFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesTransportFactoryProviderFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesTransportFactoryProviderFactory(firebasePerformanceModule);
    }

    public static Provider<t29> providesTransportFactoryProvider(FirebasePerformanceModule firebasePerformanceModule) {
        Provider<t29> providerProvidesTransportFactoryProvider = firebasePerformanceModule.providesTransportFactoryProvider();
        te6.b(providerProvidesTransportFactoryProvider);
        return providerProvidesTransportFactoryProvider;
    }

    @Override // defpackage.ws6
    public Provider<t29> get() {
        return providesTransportFactoryProvider(this.module);
    }
}
