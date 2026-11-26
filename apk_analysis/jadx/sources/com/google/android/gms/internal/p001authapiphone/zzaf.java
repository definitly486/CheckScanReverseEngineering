package com.google.android.gms.internal.p001authapiphone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.phone.SmsCodeBrowserClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import defpackage.g27;
import defpackage.ypa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaf extends GoogleApi implements SmsCodeBrowserClient {
    public static final Api.ClientKey a = new Api.ClientKey();
    public static final ypa b = new ypa();

    public zzaf(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) new Api("SmsCodeBrowser.API", b, a), Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeBrowserClient
    public final Task<Void> startSmsCodeRetriever() {
        return doWrite(TaskApiCall.builder().setFeatures(zzan.zzb).run(new g27(this)).setMethodKey(1566).build());
    }

    public zzaf(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) new Api("SmsCodeBrowser.API", b, a), Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
