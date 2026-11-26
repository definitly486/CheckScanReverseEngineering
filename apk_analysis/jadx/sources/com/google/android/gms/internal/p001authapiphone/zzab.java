package com.google.android.gms.internal.p001authapiphone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.phone.SmsCodeAutofillClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.hma;
import defpackage.pec;
import defpackage.roa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab extends GoogleApi implements SmsCodeAutofillClient {
    public static final Api.ClientKey a = new Api.ClientKey();
    public static final pec b = new pec();

    public zzab(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) new Api("SmsCodeAutofill.API", b, a), Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final Task<Integer> checkPermissionState() {
        return doRead(TaskApiCall.builder().setFeatures(zzan.zza).run(new RemoteCall() { // from class: uhc
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzk) ((zzah) obj).getService()).zzf(new jgc(this.b, (TaskCompletionSource) obj2));
            }
        }).setMethodKey(1564).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final Task<Boolean> hasOngoingSmsRequest(String str) {
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(!str.isEmpty(), "The package name cannot be empty.");
        return doRead(TaskApiCall.builder().setFeatures(zzan.zza).run(new hma(2, this, str)).setMethodKey(1565).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsCodeAutofillClient
    public final Task<Void> startSmsCodeRetriever() {
        return doWrite(TaskApiCall.builder().setFeatures(zzan.zza).run(new roa(this)).setMethodKey(1563).build());
    }

    public zzab(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) new Api("SmsCodeAutofill.API", b, a), Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
