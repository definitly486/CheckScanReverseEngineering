package com.google.android.gms.internal.p001authapiphone;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.auth.api.phone.IncomingCallRetrieverClient;
import com.google.android.gms.auth.api.phone.IncomingCallRetrieverRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.Task;
import defpackage.jh2;
import defpackage.tk2;
import defpackage.zu4;

/* JADX INFO: loaded from: classes4.dex */
public final class zzr extends GoogleApi implements IncomingCallRetrieverClient {
    public static final Logger a = new Logger("MissedCallRetriever", new String[0]);
    public static final /* synthetic */ int zza = 0;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ zzr(Context context, Api.AbstractClientBuilder abstractClientBuilder, int i, jh2 jh2Var) {
        zzs zzsVar = zzt.b;
        context.getClass();
        zzsVar.getClass();
        super(context, (Api<Api.ApiOptions.NoOptions>) new Api("MissedCallRetriever.API", zzsVar, zzt.a), Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.auth.api.phone.IncomingCallRetrieverClient
    public final Task<PendingIntent> startIncomingCallRetriever(IncomingCallRetrieverRequest incomingCallRetrieverRequest) {
        incomingCallRetrieverRequest.getClass();
        a.i("InternalMissedCallRetrieverClient#startMissedCallRetriever invoked", new Object[0]);
        Task<PendingIntent> taskDoRead = doRead(TaskApiCall.builder().setFeatures(zzan.zze).run(new zu4(incomingCallRetrieverRequest)).setMethodKey(1715).build());
        taskDoRead.getClass();
        return taskDoRead;
    }

    @Override // com.google.android.gms.auth.api.phone.IncomingCallRetrieverClient
    public final Task<PendingIntent> startUserConsent() {
        a.i("InternalMissedCallRetrieverClient#startUserConsent invoked", new Object[0]);
        Task<PendingIntent> taskDoRead = doRead(TaskApiCall.builder().setFeatures(zzan.zzf).run(tk2.f).setMethodKey(1735).build());
        taskDoRead.getClass();
        return taskDoRead;
    }
}
