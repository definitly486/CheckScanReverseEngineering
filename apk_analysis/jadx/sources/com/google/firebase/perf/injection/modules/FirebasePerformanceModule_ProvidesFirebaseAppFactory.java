package com.google.firebase.perf.injection.modules;

import com.google.firebase.FirebaseApp;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesFirebaseAppFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesFirebaseAppFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesFirebaseAppFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesFirebaseAppFactory(firebasePerformanceModule);
    }

    public static FirebaseApp providesFirebaseApp(FirebasePerformanceModule firebasePerformanceModule) {
        FirebaseApp firebaseAppProvidesFirebaseApp = firebasePerformanceModule.providesFirebaseApp();
        te6.b(firebaseAppProvidesFirebaseApp);
        return firebaseAppProvidesFirebaseApp;
    }

    @Override // defpackage.ws6
    public FirebaseApp get() {
        return providesFirebaseApp(this.module);
    }
}
