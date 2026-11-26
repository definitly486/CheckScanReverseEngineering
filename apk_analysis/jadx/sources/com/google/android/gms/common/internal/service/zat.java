package com.google.android.gms.common.internal.service;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.internal.base.zad;
import com.google.android.gms.tasks.Task;
import defpackage.ama;
import defpackage.xa5;

/* JADX INFO: loaded from: classes4.dex */
public final class zat extends GoogleApi implements TelemetryLoggingClient {
    public static final Api a = new Api("ClientTelemetry.API", new ama(), new Api.ClientKey());
    public static final /* synthetic */ int zab = 0;

    public zat(Context context, TelemetryLoggingOptions telemetryLoggingOptions) {
        super(context, (Api<TelemetryLoggingOptions>) a, telemetryLoggingOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.common.internal.TelemetryLoggingClient
    public final Task<Void> log(TelemetryData telemetryData) {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(zad.zaa);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new xa5(telemetryData));
        return doBestEffortWrite(builder.build());
    }
}
