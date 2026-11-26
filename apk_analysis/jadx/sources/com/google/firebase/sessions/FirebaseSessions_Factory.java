package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import defpackage.o22;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseSessions_Factory implements Factory<FirebaseSessions> {
    private final Provider<o22> backgroundDispatcherProvider;
    private final Provider<FirebaseApp> firebaseAppProvider;
    private final Provider<SessionsActivityLifecycleCallbacks> sessionsActivityLifecycleCallbacksProvider;
    private final Provider<SessionsSettings> settingsProvider;

    private FirebaseSessions_Factory(Provider<FirebaseApp> provider, Provider<SessionsSettings> provider2, Provider<o22> provider3, Provider<SessionsActivityLifecycleCallbacks> provider4) {
        this.firebaseAppProvider = provider;
        this.settingsProvider = provider2;
        this.backgroundDispatcherProvider = provider3;
        this.sessionsActivityLifecycleCallbacksProvider = provider4;
    }

    public static FirebaseSessions_Factory create(Provider<FirebaseApp> provider, Provider<SessionsSettings> provider2, Provider<o22> provider3, Provider<SessionsActivityLifecycleCallbacks> provider4) {
        return new FirebaseSessions_Factory(provider, provider2, provider3, provider4);
    }

    public static FirebaseSessions newInstance(FirebaseApp firebaseApp, SessionsSettings sessionsSettings, o22 o22Var, SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks) {
        return new FirebaseSessions(firebaseApp, sessionsSettings, o22Var, sessionsActivityLifecycleCallbacks);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, defpackage.ws6
    public FirebaseSessions get() {
        return newInstance((FirebaseApp) this.firebaseAppProvider.get(), (SessionsSettings) this.settingsProvider.get(), (o22) this.backgroundDispatcherProvider.get(), (SessionsActivityLifecycleCallbacks) this.sessionsActivityLifecycleCallbacksProvider.get());
    }
}
