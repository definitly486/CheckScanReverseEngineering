package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import defpackage.o22;

/* JADX INFO: loaded from: classes4.dex */
public final class SettingsCacheImpl_Factory implements Factory<SettingsCacheImpl> {
    private final Provider<o22> backgroundDispatcherProvider;
    private final Provider<DataStore<SessionConfigs>> sessionConfigsDataStoreProvider;
    private final Provider<TimeProvider> timeProvider;

    private SettingsCacheImpl_Factory(Provider<o22> provider, Provider<TimeProvider> provider2, Provider<DataStore<SessionConfigs>> provider3) {
        this.backgroundDispatcherProvider = provider;
        this.timeProvider = provider2;
        this.sessionConfigsDataStoreProvider = provider3;
    }

    public static SettingsCacheImpl_Factory create(Provider<o22> provider, Provider<TimeProvider> provider2, Provider<DataStore<SessionConfigs>> provider3) {
        return new SettingsCacheImpl_Factory(provider, provider2, provider3);
    }

    public static SettingsCacheImpl newInstance(o22 o22Var, TimeProvider timeProvider, DataStore<SessionConfigs> dataStore) {
        return new SettingsCacheImpl(o22Var, timeProvider, dataStore);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, defpackage.ws6
    public SettingsCacheImpl get() {
        return newInstance((o22) this.backgroundDispatcherProvider.get(), (TimeProvider) this.timeProvider.get(), (DataStore) this.sessionConfigsDataStoreProvider.get());
    }
}
