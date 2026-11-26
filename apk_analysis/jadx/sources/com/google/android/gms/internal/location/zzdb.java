package com.google.android.gms.internal.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzu;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.e;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdb extends GoogleApi implements SettingsClient {
    public static final /* synthetic */ int zza = 0;

    public zzdb(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zzcg.zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.location.SettingsClient
    public final Task<LocationSettingsResponse> checkLocationSettings(final LocationSettingsRequest locationSettingsRequest) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: t2b
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzec zzecVar = (zzec) obj;
                LocationSettingsRequest locationSettingsRequest2 = locationSettingsRequest;
                Preconditions.checkArgument(locationSettingsRequest2 != null, "locationSettingsRequest can't be null");
                ((zzu) zzecVar.getService()).zzD(locationSettingsRequest2, new w3b(taskCompletionSource), null);
            }
        }).setMethodKey(2426).build());
    }

    @Override // com.google.android.gms.location.SettingsClient
    public final Task<Boolean> isGoogleLocationAccuracyEnabled() {
        return doRead(TaskApiCall.builder().run(e.b).setMethodKey(2444).setFeatures(com.google.android.gms.location.zzn.zzm).build());
    }

    public zzdb(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzcg.zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
