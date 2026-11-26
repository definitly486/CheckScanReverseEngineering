package com.google.firebase.inappmessaging.internal;

import android.app.Application;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ProviderInstaller_Factory implements Factory<ProviderInstaller> {
    private final Provider<Application> applicationProvider;

    private ProviderInstaller_Factory(Provider<Application> provider) {
        this.applicationProvider = provider;
    }

    public static ProviderInstaller_Factory create(Provider<Application> provider) {
        return new ProviderInstaller_Factory(provider);
    }

    public static ProviderInstaller newInstance(Application application) {
        return new ProviderInstaller(application);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public ProviderInstaller get() {
        return newInstance((Application) this.applicationProvider.get());
    }
}
