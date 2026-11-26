package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.dagger.internal.Provider;
import defpackage.o22;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory implements Factory<DataStore<SessionData>> {
    private final Provider<Context> appContextProvider;
    private final Provider<o22> blockingDispatcherProvider;
    private final Provider<SessionDataSerializer> sessionDataSerializerProvider;

    private FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory(Provider<Context> provider, Provider<o22> provider2, Provider<SessionDataSerializer> provider3) {
        this.appContextProvider = provider;
        this.blockingDispatcherProvider = provider2;
        this.sessionDataSerializerProvider = provider3;
    }

    public static FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory create(Provider<Context> provider, Provider<o22> provider2, Provider<SessionDataSerializer> provider3) {
        return new FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory(provider, provider2, provider3);
    }

    public static DataStore<SessionData> sessionDataStore(Context context, o22 o22Var, SessionDataSerializer sessionDataSerializer) {
        return (DataStore) Preconditions.checkNotNullFromProvides(FirebaseSessionsComponent.MainModule.Companion.sessionDataStore(context, o22Var, sessionDataSerializer));
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, defpackage.ws6
    public DataStore<SessionData> get() {
        return sessionDataStore((Context) this.appContextProvider.get(), (o22) this.blockingDispatcherProvider.get(), (SessionDataSerializer) this.sessionDataSerializerProvider.get());
    }
}
