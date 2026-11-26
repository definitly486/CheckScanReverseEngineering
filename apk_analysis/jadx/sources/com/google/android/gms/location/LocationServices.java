package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzcl;
import com.google.android.gms.internal.location.zzcr;
import com.google.android.gms.internal.location.zzcv;
import com.google.android.gms.internal.location.zzcy;
import com.google.android.gms.internal.location.zzdb;

/* JADX INFO: loaded from: classes4.dex */
public class LocationServices {

    @Deprecated
    public static final Api<Api.ApiOptions.NoOptions> API = zzcg.zzb;

    @Deprecated
    public static final FusedLocationProviderApi FusedLocationApi = new zzbd();

    @Deprecated
    public static final GeofencingApi GeofencingApi = new zzcr();

    @Deprecated
    public static final SettingsApi SettingsApi = new zzcy();

    public static FusedLocationProviderClient getFusedLocationProviderClient(Activity activity) {
        return new zzcg(activity);
    }

    public static FusedOrientationProviderClient getFusedOrientationProviderClient(Activity activity) {
        return new zzcl(activity);
    }

    public static GeofencingClient getGeofencingClient(Activity activity) {
        return new zzcv(activity);
    }

    public static SettingsClient getSettingsClient(Activity activity) {
        return new zzdb(activity);
    }

    public static FusedLocationProviderClient getFusedLocationProviderClient(Context context) {
        return new zzcg(context);
    }

    public static FusedOrientationProviderClient getFusedOrientationProviderClient(Context context) {
        return new zzcl(context);
    }

    public static GeofencingClient getGeofencingClient(Context context) {
        return new zzcv(context);
    }

    public static SettingsClient getSettingsClient(Context context) {
        return new zzdb(context);
    }
}
