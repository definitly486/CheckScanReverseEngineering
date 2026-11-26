package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import com.google.android.gms.cloudmessaging.CloudMessagingClient;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.cloudmessaging.UnregisterRequest;
import com.google.android.gms.cloudmessaging.zzi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cloudmessaging.zzd;
import com.google.android.gms.internal.cloudmessaging.zze;
import com.google.android.gms.internal.cloudmessaging.zzq;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.dmb;
import defpackage.vxa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends GoogleApi implements CloudMessagingClient {
    public static final Api a = new Api("CloudMessaging.API", new dmb(), new Api.ClientKey());

    public zzm(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingClient
    public final Task<String> register(RegisterRequest registerRequest) {
        return doRead(TaskApiCall.builder().setFeatures(zzi.zza).run(new vxa(this, registerRequest, 1)).setMethodKey(39001).build());
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingClient
    public final Task<Void> unregister(final UnregisterRequest unregisterRequest) {
        return doRead(TaskApiCall.builder().setFeatures(zzi.zzb).run(new RemoteCall() { // from class: ayb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzd zzdVar = (zzd) obj;
                pub pubVar = new pub(this.b, (TaskCompletionSource) obj2);
                ((zze) zzdVar.getService()).zzd(pubVar, unregisterRequest, zzq.zza(zzdVar.getContext()));
            }
        }).setMethodKey(39002).build());
    }
}
