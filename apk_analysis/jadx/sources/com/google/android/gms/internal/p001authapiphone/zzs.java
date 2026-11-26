package com.google.android.gms.internal.p001authapiphone;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* bridge */ /* synthetic */ Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        context.getClass();
        looper.getClass();
        clientSettings.getClass();
        ((Api.ApiOptions.NoOptions) obj).getClass();
        connectionCallbacks.getClass();
        onConnectionFailedListener.getClass();
        return new zzag(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
