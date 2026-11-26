package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import defpackage.hxb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjx {

    @Deprecated
    public static final Api zza = new Api("Phenotype.API", new hxb(), new Api.ClientKey());

    public static zzkk zza(Context context) {
        return new zzkk(context, zza, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
