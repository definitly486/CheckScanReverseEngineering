package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import defpackage.o22;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteSettingsFetcher_Factory implements Factory<RemoteSettingsFetcher> {
    private final Provider<ApplicationInfo> appInfoProvider;
    private final Provider<o22> blockingDispatcherProvider;

    private RemoteSettingsFetcher_Factory(Provider<ApplicationInfo> provider, Provider<o22> provider2) {
        this.appInfoProvider = provider;
        this.blockingDispatcherProvider = provider2;
    }

    public static RemoteSettingsFetcher_Factory create(Provider<ApplicationInfo> provider, Provider<o22> provider2) {
        return new RemoteSettingsFetcher_Factory(provider, provider2);
    }

    public static RemoteSettingsFetcher newInstance(ApplicationInfo applicationInfo, o22 o22Var) {
        return new RemoteSettingsFetcher(applicationInfo, o22Var);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, defpackage.ws6
    public RemoteSettingsFetcher get() {
        return newInstance((ApplicationInfo) this.appInfoProvider.get(), (o22) this.blockingDispatcherProvider.get());
    }
}
