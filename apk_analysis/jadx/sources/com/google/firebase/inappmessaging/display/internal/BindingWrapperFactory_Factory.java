package com.google.firebase.inappmessaging.display.internal;

import android.app.Application;
import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BindingWrapperFactory_Factory implements Factory<BindingWrapperFactory> {
    private final Provider<Application> applicationProvider;

    private BindingWrapperFactory_Factory(Provider<Application> provider) {
        this.applicationProvider = provider;
    }

    public static BindingWrapperFactory_Factory create(Provider<Application> provider) {
        return new BindingWrapperFactory_Factory(provider);
    }

    public static BindingWrapperFactory newInstance(Application application) {
        return new BindingWrapperFactory(application);
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public BindingWrapperFactory get() {
        return newInstance((Application) this.applicationProvider.get());
    }
}
