package com.google.firebase.perf.injection.modules;

import com.google.firebase.perf.session.SessionManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformanceModule_ProvidesSessionManagerFactory implements xs6 {
    private final FirebasePerformanceModule module;

    private FirebasePerformanceModule_ProvidesSessionManagerFactory(FirebasePerformanceModule firebasePerformanceModule) {
        this.module = firebasePerformanceModule;
    }

    public static FirebasePerformanceModule_ProvidesSessionManagerFactory create(FirebasePerformanceModule firebasePerformanceModule) {
        return new FirebasePerformanceModule_ProvidesSessionManagerFactory(firebasePerformanceModule);
    }

    public static SessionManager providesSessionManager(FirebasePerformanceModule firebasePerformanceModule) {
        SessionManager sessionManagerProvidesSessionManager = firebasePerformanceModule.providesSessionManager();
        te6.b(sessionManagerProvidesSessionManager);
        return sessionManagerProvidesSessionManager;
    }

    @Override // defpackage.ws6
    public SessionManager get() {
        return providesSessionManager(this.module);
    }
}
