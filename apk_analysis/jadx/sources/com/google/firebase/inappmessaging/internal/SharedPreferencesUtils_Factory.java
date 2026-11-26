package com.google.firebase.inappmessaging.internal;

import com.google.firebase.FirebaseApp;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class SharedPreferencesUtils_Factory implements Factory<SharedPreferencesUtils> {
    private final Provider<FirebaseApp> firebaseAppProvider;

    private SharedPreferencesUtils_Factory(Provider<FirebaseApp> provider) {
        this.firebaseAppProvider = provider;
    }

    public static SharedPreferencesUtils_Factory create(Provider<FirebaseApp> provider) {
        return new SharedPreferencesUtils_Factory(provider);
    }

    public static SharedPreferencesUtils newInstance(FirebaseApp firebaseApp) {
        return new SharedPreferencesUtils(firebaseApp);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public SharedPreferencesUtils get() {
        return newInstance((FirebaseApp) this.firebaseAppProvider.get());
    }
}
