package com.google.firebase.perf.injection.modules;

import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesFirebaseInstallationsFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesFirebaseInstallationsFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesFirebaseInstallationsFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesFirebaseInstallationsFactory(firebasePerformanceModule);
    }

    public static FirebaseInstallationsApi providesFirebaseInstallations(FirebasePerformanceModule firebasePerformanceModule) {
        FirebaseInstallationsApi firebaseInstallationsApiProvidesFirebaseInstallations = firebasePerformanceModule.providesFirebaseInstallations();
        te6.b(firebaseInstallationsApiProvidesFirebaseInstallations);
        return firebaseInstallationsApiProvidesFirebaseInstallations;
    }

    @Override // defpackage.ws6
    public FirebaseInstallationsApi get() {
        return providesFirebaseInstallations(this.module);
    }
}
