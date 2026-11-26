package com.google.firebase.perf.injection.modules;

import com.google.firebase.perf.config.ConfigResolver;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesConfigResolverFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesConfigResolverFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesConfigResolverFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesConfigResolverFactory(firebasePerformanceModule);
    }

    public static ConfigResolver providesConfigResolver(FirebasePerformanceModule firebasePerformanceModule) {
        ConfigResolver configResolverProvidesConfigResolver = firebasePerformanceModule.providesConfigResolver();
        te6.b(configResolverProvidesConfigResolver);
        return configResolverProvidesConfigResolver;
    }

    @Override // defpackage.ws6
    public ConfigResolver get() {
        return providesConfigResolver(this.module);
    }
}
