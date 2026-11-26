package io.appmetrica.analytics.push.provider.firebase.impl;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.ef1;
import defpackage.fh8;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.provider.api.PushServiceController;
import io.appmetrica.analytics.push.provider.api.PushServiceExecutionRestrictions;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes5.dex */
public class f implements PushServiceController {
    public final Context a;
    public final long b;
    public final cl4 c;
    public final cl4 d;
    public FirebaseMessaging e;

    public f(Context context, n nVar) {
        this.a = context;
        this.b = 20L;
        this.c = new fh8(new e(nVar));
        this.d = new fh8(new c(nVar));
    }

    public static b a(FirebaseMessaging firebaseMessaging) {
        try {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Task<String> token = firebaseMessaging.getToken();
            token.addOnCompleteListener(new ef1(countDownLatch));
            if (countDownLatch.await(10L, g.a)) {
                return token.isSuccessful() ? new b(token.getResult(), null, 2) : new b(null, token.getException(), 1);
            }
            throw new TimeoutException("token retrieval timeout");
        } catch (Throwable th) {
            return new b(null, th, 1);
        }
    }

    @Override // io.appmetrica.analytics.push.provider.api.PushServiceController
    public final PushServiceExecutionRestrictions getExecutionRestrictions() {
        return new d(this);
    }

    @Override // io.appmetrica.analytics.push.provider.api.PushServiceController
    public final String getToken() {
        FirebaseMessaging firebaseMessaging = this.e;
        if (firebaseMessaging == null) {
            TrackersHub.getInstance().reportEvent("Attempt to get push token failed since firebaseMessaging is null");
            return null;
        }
        b bVarA = a(firebaseMessaging);
        if (((Boolean) bVarA.c.getValue()).booleanValue()) {
            return bVarA.a;
        }
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.error(bVarA.b, "Failed to get token, will retry once", new Object[0]);
        b bVarA2 = a(firebaseMessaging);
        if (((Boolean) bVarA2.c.getValue()).booleanValue()) {
            return bVarA2.a;
        }
        publicLogger.error(bVarA2.b, "Failed to get token after retry", new Object[0]);
        TrackersHub.getInstance().reportError("Attempt to get push token failed", bVarA2.b);
        return null;
    }

    @Override // io.appmetrica.analytics.push.provider.api.PushServiceController
    public final String getTransportId() {
        return "firebase";
    }

    @Override // io.appmetrica.analytics.push.provider.api.PushServiceController
    public final boolean register() {
        try {
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.a) == 0) {
                m mVar = (m) this.c.getValue();
                mVar.getClass();
                FirebaseOptions.Builder builder = new FirebaseOptions.Builder();
                builder.setApplicationId(mVar.b);
                builder.setGcmSenderId(mVar.c);
                if (CoreUtils.isNotEmpty(mVar.a)) {
                    builder.setApiKey(mVar.a);
                }
                if (CoreUtils.isNotEmpty(mVar.d)) {
                    builder.setProjectId(mVar.d);
                }
                this.e = (FirebaseMessaging) a(builder.build()).get(FirebaseMessaging.class);
                return true;
            }
        } catch (Throwable unused) {
        }
        PublicLogger.INSTANCE.warning("Google play services not available", new Object[0]);
        TrackersHub.getInstance().reportEvent("Google play services not available");
        return false;
    }

    @Override // io.appmetrica.analytics.push.provider.api.PushServiceController
    public final boolean shouldSendToken(String str) {
        return aa4.e(str, getToken());
    }

    public f(Context context) {
        this(context, new k(context));
    }

    public FirebaseApp a(FirebaseOptions firebaseOptions) {
        try {
            FirebaseApp.initializeApp(this.a, firebaseOptions);
        } catch (Throwable unused) {
        }
        return FirebaseApp.getInstance();
    }

    public static final void a(CountDownLatch countDownLatch, Task task) {
        countDownLatch.countDown();
    }
}
