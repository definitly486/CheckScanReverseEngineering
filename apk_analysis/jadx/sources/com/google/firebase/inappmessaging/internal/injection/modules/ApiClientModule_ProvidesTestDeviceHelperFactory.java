package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import com.google.firebase.inappmessaging.internal.SharedPreferencesUtils;
import com.google.firebase.inappmessaging.internal.TestDeviceHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiClientModule_ProvidesTestDeviceHelperFactory implements Factory<TestDeviceHelper> {
    private final ApiClientModule module;
    private final Provider<SharedPreferencesUtils> sharedPreferencesUtilsProvider;

    private ApiClientModule_ProvidesTestDeviceHelperFactory(ApiClientModule apiClientModule, Provider<SharedPreferencesUtils> provider) {
        this.module = apiClientModule;
        this.sharedPreferencesUtilsProvider = provider;
    }

    public static ApiClientModule_ProvidesTestDeviceHelperFactory create(ApiClientModule apiClientModule, Provider<SharedPreferencesUtils> provider) {
        return new ApiClientModule_ProvidesTestDeviceHelperFactory(apiClientModule, provider);
    }

    public static TestDeviceHelper providesTestDeviceHelper(ApiClientModule apiClientModule, SharedPreferencesUtils sharedPreferencesUtils) {
        return (TestDeviceHelper) Preconditions.checkNotNullFromProvides(apiClientModule.providesTestDeviceHelper(sharedPreferencesUtils));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public TestDeviceHelper get() {
        return providesTestDeviceHelper(this.module, (SharedPreferencesUtils) this.sharedPreferencesUtilsProvider.get());
    }
}
