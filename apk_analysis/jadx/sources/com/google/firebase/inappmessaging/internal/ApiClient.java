package com.google.firebase.inappmessaging.internal;

import android.app.Application;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.compose.material3.internal.CalendarModelKt;
import com.google.firebase.FirebaseApp;
import com.google.firebase.inappmessaging.internal.time.Clock;
import defpackage.bm1;
import defpackage.e73;
import defpackage.f73;
import defpackage.j21;
import defpackage.ql1;
import defpackage.ws6;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public class ApiClient {
    private static final String FETCHING_CAMPAIGN_MESSAGE = "Fetching campaigns from service.";
    private final Application application;
    private final Clock clock;
    private final FirebaseApp firebaseApp;
    private final ws6<GrpcClient> grpcClient;
    private final ProviderInstaller providerInstaller;

    public ApiClient(ws6<GrpcClient> ws6Var, FirebaseApp firebaseApp, Application application, Clock clock, ProviderInstaller providerInstaller) {
        this.grpcClient = ws6Var;
        this.firebaseApp = firebaseApp;
        this.application = application;
        this.clock = clock;
        this.providerInstaller = providerInstaller;
    }

    private ql1 getClientAppInfo(InstallationIdResult installationIdResult) {
        ql1.b bVarB = ql1.b();
        bVarB.d(this.firebaseApp.getOptions().getApplicationId());
        bVarB.b(installationIdResult.installationId());
        bVarB.c(installationIdResult.installationTokenResult().getToken());
        return bVarB.build();
    }

    private bm1 getClientSignals() {
        bm1.a aVarB = bm1.b();
        aVarB.d(String.valueOf(Build.VERSION.SDK_INT));
        aVarB.c(Locale.getDefault().toString());
        aVarB.e(TimeZone.getDefault().getID());
        String versionName = getVersionName();
        if (!TextUtils.isEmpty(versionName)) {
            aVarB.b(versionName);
        }
        return aVarB.build();
    }

    private String getVersionName() {
        try {
            return this.application.getPackageManager().getPackageInfo(this.application.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logging.loge("Error finding versionName : " + e.getMessage());
            return null;
        }
    }

    private f73 withCacheExpirationSafeguards(f73 f73Var) {
        if (f73Var.c() >= this.clock.now() + 60000 && f73Var.c() <= this.clock.now() + 259200000) {
            return f73Var;
        }
        f73.b builder = f73Var.toBuilder();
        builder.b(this.clock.now() + CalendarModelKt.MillisecondsIn24Hours);
        return builder.build();
    }

    public f73 getFiams(InstallationIdResult installationIdResult, j21 j21Var) {
        Logging.logi(FETCHING_CAMPAIGN_MESSAGE);
        this.providerInstaller.install();
        GrpcClient grpcClient = this.grpcClient.get();
        e73.b bVarD = e73.d();
        bVarD.d(this.firebaseApp.getOptions().getGcmSenderId());
        bVarD.b(j21Var.c());
        bVarD.c(getClientSignals());
        bVarD.e(getClientAppInfo(installationIdResult));
        return withCacheExpirationSafeguards(grpcClient.fetchEligibleCampaigns(bVarD.build()));
    }
}
