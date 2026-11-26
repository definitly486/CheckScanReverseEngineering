package com.google.firebase.inappmessaging.display.internal.injection.modules;

import android.app.Application;
import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;
import defpackage.p37;

/* JADX INFO: loaded from: classes4.dex */
public final class GlideModule_ProvidesGlideRequestManagerFactory implements Factory<p37> {
    private final Provider<Application> applicationProvider;
    private final GlideModule module;

    private GlideModule_ProvidesGlideRequestManagerFactory(GlideModule glideModule, Provider<Application> provider) {
        this.module = glideModule;
        this.applicationProvider = provider;
    }

    public static GlideModule_ProvidesGlideRequestManagerFactory create(GlideModule glideModule, Provider<Application> provider) {
        return new GlideModule_ProvidesGlideRequestManagerFactory(glideModule, provider);
    }

    public static p37 providesGlideRequestManager(GlideModule glideModule, Application application) {
        return (p37) Preconditions.checkNotNullFromProvides(glideModule.providesGlideRequestManager(application));
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public p37 get() {
        return providesGlideRequestManager(this.module, (Application) this.applicationProvider.get());
    }
}
