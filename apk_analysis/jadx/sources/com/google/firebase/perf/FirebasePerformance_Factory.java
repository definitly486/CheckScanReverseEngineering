package com.google.firebase.perf;

import com.google.firebase.FirebaseApp;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.perf.config.ConfigResolver;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import defpackage.t29;
import defpackage.xs6;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebasePerformance_Factory implements xs6 {
    private final xs6<ConfigResolver> configResolverProvider;
    private final xs6<FirebaseApp> firebaseAppProvider;
    private final xs6<FirebaseInstallationsApi> firebaseInstallationsApiProvider;
    private final xs6<Provider<RemoteConfigComponent>> firebaseRemoteConfigProvider;
    private final xs6<RemoteConfigManager> remoteConfigManagerProvider;
    private final xs6<SessionManager> sessionManagerProvider;
    private final xs6<Provider<t29>> transportFactoryProvider;

    private FirebasePerformance_Factory(xs6<FirebaseApp> xs6Var, xs6<Provider<RemoteConfigComponent>> xs6Var2, xs6<FirebaseInstallationsApi> xs6Var3, xs6<Provider<t29>> xs6Var4, xs6<RemoteConfigManager> xs6Var5, xs6<ConfigResolver> xs6Var6, xs6<SessionManager> xs6Var7) {
        this.firebaseAppProvider = xs6Var;
        this.firebaseRemoteConfigProvider = xs6Var2;
        this.firebaseInstallationsApiProvider = xs6Var3;
        this.transportFactoryProvider = xs6Var4;
        this.remoteConfigManagerProvider = xs6Var5;
        this.configResolverProvider = xs6Var6;
        this.sessionManagerProvider = xs6Var7;
    }

    public static FirebasePerformance_Factory create(xs6<FirebaseApp> xs6Var, xs6<Provider<RemoteConfigComponent>> xs6Var2, xs6<FirebaseInstallationsApi> xs6Var3, xs6<Provider<t29>> xs6Var4, xs6<RemoteConfigManager> xs6Var5, xs6<ConfigResolver> xs6Var6, xs6<SessionManager> xs6Var7) {
        return new FirebasePerformance_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7);
    }

    public static FirebasePerformance newInstance(FirebaseApp firebaseApp, Provider<RemoteConfigComponent> provider, FirebaseInstallationsApi firebaseInstallationsApi, Provider<t29> provider2, RemoteConfigManager remoteConfigManager, ConfigResolver configResolver, SessionManager sessionManager) {
        return new FirebasePerformance(firebaseApp, provider, firebaseInstallationsApi, provider2, remoteConfigManager, configResolver, sessionManager);
    }

    @Override // defpackage.ws6
    public FirebasePerformance get() {
        return newInstance(this.firebaseAppProvider.get(), this.firebaseRemoteConfigProvider.get(), this.firebaseInstallationsApiProvider.get(), this.transportFactoryProvider.get(), this.remoteConfigManagerProvider.get(), this.configResolverProvider.get(), this.sessionManagerProvider.get());
    }
}
