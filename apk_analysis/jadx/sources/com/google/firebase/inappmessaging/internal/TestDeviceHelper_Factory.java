package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TestDeviceHelper_Factory implements Factory<TestDeviceHelper> {
    private final Provider<SharedPreferencesUtils> sharedPreferencesUtilsProvider;

    private TestDeviceHelper_Factory(Provider<SharedPreferencesUtils> provider) {
        this.sharedPreferencesUtilsProvider = provider;
    }

    public static TestDeviceHelper_Factory create(Provider<SharedPreferencesUtils> provider) {
        return new TestDeviceHelper_Factory(provider);
    }

    public static TestDeviceHelper newInstance(SharedPreferencesUtils sharedPreferencesUtils) {
        return new TestDeviceHelper(sharedPreferencesUtils);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public TestDeviceHelper get() {
        return newInstance((SharedPreferencesUtils) this.sharedPreferencesUtilsProvider.get());
    }
}
