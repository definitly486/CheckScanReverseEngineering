package com.google.firebase.perf.injection.modules;

import com.google.firebase.perf.config.RemoteConfigManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesRemoteConfigManagerFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesRemoteConfigManagerFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesRemoteConfigManagerFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesRemoteConfigManagerFactory(firebasePerformanceModule);
    }

    public static RemoteConfigManager providesRemoteConfigManager(FirebasePerformanceModule firebasePerformanceModule) {
        RemoteConfigManager remoteConfigManagerProvidesRemoteConfigManager = firebasePerformanceModule.providesRemoteConfigManager();
        te6.b(remoteConfigManagerProvidesRemoteConfigManager);
        return remoteConfigManagerProvidesRemoteConfigManager;
    }

    @Override // defpackage.ws6
    public RemoteConfigManager get() {
        return providesRemoteConfigManager(this.module);
    }
}
