package androidx.browser.auth;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.os.IBinder;
import defpackage.oz3;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class AuthTabSession {
    private final oz3 mCallback;
    private final ComponentName mComponentName;
    private final PendingIntent mId;

    public static class PendingSession {
        private final AuthTabCallback mCallback;
        private final Executor mExecutor;
        private final PendingIntent mId;

        public PendingSession(PendingIntent pendingIntent, Executor executor, AuthTabCallback authTabCallback) {
            this.mId = pendingIntent;
            this.mExecutor = executor;
            this.mCallback = authTabCallback;
        }

        public AuthTabCallback getCallback() {
            return this.mCallback;
        }

        public Executor getExecutor() {
            return this.mExecutor;
        }

        public PendingIntent getId() {
            return this.mId;
        }
    }

    public AuthTabSession(oz3 oz3Var, ComponentName componentName, PendingIntent pendingIntent) {
        this.mCallback = oz3Var;
        this.mComponentName = componentName;
        this.mId = pendingIntent;
    }

    public IBinder getBinder() {
        return this.mCallback.asBinder();
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public PendingIntent getId() {
        return this.mId;
    }
}
