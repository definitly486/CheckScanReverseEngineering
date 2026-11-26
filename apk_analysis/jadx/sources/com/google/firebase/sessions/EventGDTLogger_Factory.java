package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import defpackage.t29;

/* JADX INFO: loaded from: classes4.dex */
public final class EventGDTLogger_Factory implements Factory<EventGDTLogger> {
    private final Provider<com.google.firebase.inject.Provider<t29>> transportFactoryProvider;

    private EventGDTLogger_Factory(Provider<com.google.firebase.inject.Provider<t29>> provider) {
        this.transportFactoryProvider = provider;
    }

    public static EventGDTLogger_Factory create(Provider<com.google.firebase.inject.Provider<t29>> provider) {
        return new EventGDTLogger_Factory(provider);
    }

    public static EventGDTLogger newInstance(com.google.firebase.inject.Provider<t29> provider) {
        return new EventGDTLogger(provider);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, defpackage.ws6
    public EventGDTLogger get() {
        return newInstance((com.google.firebase.inject.Provider) this.transportFactoryProvider.get());
    }
}
