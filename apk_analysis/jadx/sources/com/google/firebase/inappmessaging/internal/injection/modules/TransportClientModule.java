package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.DeveloperListenerManager;
import com.google.firebase.inappmessaging.internal.MetricsLoggerClient;
import com.google.firebase.inappmessaging.internal.time.Clock;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.dc;
import defpackage.di;
import defpackage.q29;
import defpackage.ry;
import defpackage.t29;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class TransportClientModule {
    private static final String TRANSPORT_NAME = "FIREBASE_INAPPMESSAGING";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$providesMetricsLoggerClient$0(byte[] bArr) {
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$providesMetricsLoggerClient$1(q29 q29Var, byte[] bArr) {
        q29Var.a(ry.b(bArr));
    }

    @Provides
    public static MetricsLoggerClient providesMetricsLoggerClient(FirebaseApp firebaseApp, t29 t29Var, AnalyticsConnector analyticsConnector, FirebaseInstallationsApi firebaseInstallationsApi, Clock clock, DeveloperListenerManager developerListenerManager, Executor executor) {
        return new MetricsLoggerClient(new di(t29Var.b(new dc(3)), 5), analyticsConnector, firebaseApp, firebaseInstallationsApi, clock, developerListenerManager, executor);
    }
}
