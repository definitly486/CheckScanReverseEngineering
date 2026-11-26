package com.google.firebase.sessions;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;

/* JADX INFO: loaded from: classes4.dex */
public interface SharedSessionRepository {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SharedSessionRepository getInstance() {
            return ((FirebaseSessionsComponent) FirebaseKt.getApp(Firebase.INSTANCE).get(FirebaseSessionsComponent.class)).getSharedSessionRepository();
        }
    }

    void appBackground();

    void appForeground();

    boolean isInForeground();
}
