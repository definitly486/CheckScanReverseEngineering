package com.google.android.gms.common.internal.service;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.zad;
import com.google.android.gms.tasks.Task;
import defpackage.tla;
import defpackage.xla;

/* JADX INFO: loaded from: classes4.dex */
public final class zaq extends GoogleApi implements zad {
    public static final Api a = new Api("ClientNotification.API", new tla(), new Api.ClientKey());
    public static final /* synthetic */ int zab = 0;

    public zaq(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.common.internal.zad
    public final Task zaa(com.google.android.gms.common.internal.zab zabVar) {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.setFeatures(com.google.android.gms.internal.base.zad.zab);
        builder.setAutoResolveMissingFeatures(false);
        builder.run(new xla(zabVar));
        return doBestEffortWrite(builder.build());
    }
}
