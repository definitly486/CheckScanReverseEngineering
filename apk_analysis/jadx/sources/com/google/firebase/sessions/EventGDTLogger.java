package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.inject.Provider;
import defpackage.ha1;
import defpackage.iy2;
import defpackage.j7;
import defpackage.jh2;
import defpackage.ry;
import defpackage.t29;

/* JADX INFO: loaded from: classes4.dex */
public final class EventGDTLogger implements EventGDTLoggerInterface {
    private static final String AQS_LOG_SOURCE = "FIREBASE_APPQUALITY_SESSION";
    public static final Companion Companion = new Companion(null);
    private final Provider<t29> transportFactoryProvider;

    public EventGDTLogger(Provider<t29> provider) {
        provider.getClass();
        this.transportFactoryProvider = provider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] encode(SessionEvent sessionEvent) {
        String strEncode = SessionEvents.INSTANCE.getSESSION_EVENT_ENCODER$com_google_firebase_firebase_sessions().encode(sessionEvent);
        strEncode.getClass();
        Log.d(FirebaseSessions.TAG, "Session Event Type: " + sessionEvent.getEventType().name());
        byte[] bytes = strEncode.getBytes(ha1.b);
        bytes.getClass();
        return bytes;
    }

    @Override // com.google.firebase.sessions.EventGDTLoggerInterface
    public void log(SessionEvent sessionEvent) {
        sessionEvent.getClass();
        this.transportFactoryProvider.get().a(AQS_LOG_SOURCE, new iy2("json"), new j7(this, 3)).a(ry.b(sessionEvent));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
