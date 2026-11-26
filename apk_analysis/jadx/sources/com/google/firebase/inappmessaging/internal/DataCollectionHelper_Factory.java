package com.google.firebase.inappmessaging.internal;

import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DataCollectionHelper_Factory implements Factory<DataCollectionHelper> {
    private final Provider<FirebaseApp> firebaseAppProvider;
    private final Provider<Subscriber> firebaseEventsSubscriberProvider;
    private final Provider<SharedPreferencesUtils> sharedPreferencesUtilsProvider;

    private DataCollectionHelper_Factory(Provider<FirebaseApp> provider, Provider<SharedPreferencesUtils> provider2, Provider<Subscriber> provider3) {
        this.firebaseAppProvider = provider;
        this.sharedPreferencesUtilsProvider = provider2;
        this.firebaseEventsSubscriberProvider = provider3;
    }

    public static DataCollectionHelper_Factory create(Provider<FirebaseApp> provider, Provider<SharedPreferencesUtils> provider2, Provider<Subscriber> provider3) {
        return new DataCollectionHelper_Factory(provider, provider2, provider3);
    }

    public static DataCollectionHelper newInstance(FirebaseApp firebaseApp, SharedPreferencesUtils sharedPreferencesUtils, Subscriber subscriber) {
        return new DataCollectionHelper(firebaseApp, sharedPreferencesUtils, subscriber);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public DataCollectionHelper get() {
        return newInstance((FirebaseApp) this.firebaseAppProvider.get(), (SharedPreferencesUtils) this.sharedPreferencesUtilsProvider.get(), (Subscriber) this.firebaseEventsSubscriberProvider.get());
    }
}
