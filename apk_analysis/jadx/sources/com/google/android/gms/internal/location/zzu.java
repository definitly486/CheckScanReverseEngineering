package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.CurrentLocationRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.SleepSegmentRequest;
import com.google.android.gms.location.zzac;

/* JADX INFO: loaded from: classes4.dex */
public interface zzu extends IInterface {
    @Deprecated
    void zzA(Location location);

    void zzB(Location location, IStatusCallback iStatusCallback);

    void zzC(zzq zzqVar);

    void zzD(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar, String str);

    void zzE(zzn zznVar);

    void zzF(zzi zziVar);

    @Deprecated
    void zzd(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzs zzsVar);

    void zze(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    @Deprecated
    void zzf(zzel zzelVar, zzs zzsVar);

    void zzg(zzel zzelVar, IStatusCallback iStatusCallback);

    void zzh(long j, boolean z, PendingIntent pendingIntent);

    void zzi(com.google.android.gms.location.zzb zzbVar, PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zzj(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zzk(PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zzl(PendingIntent pendingIntent);

    void zzm(PendingIntent pendingIntent, SleepSegmentRequest sleepSegmentRequest, IStatusCallback iStatusCallback);

    void zzn(PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zzo(zzac zzacVar, zzed zzedVar);

    @Deprecated
    LocationAvailability zzp(String str);

    void zzq(LastLocationRequest lastLocationRequest, zzed zzedVar);

    @Deprecated
    void zzr(LastLocationRequest lastLocationRequest, zzy zzyVar);

    @Deprecated
    Location zzs();

    ICancelToken zzt(CurrentLocationRequest currentLocationRequest, zzed zzedVar);

    @Deprecated
    ICancelToken zzu(CurrentLocationRequest currentLocationRequest, zzy zzyVar);

    @Deprecated
    void zzv(zzeh zzehVar);

    void zzw(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback);

    void zzx(zzed zzedVar, IStatusCallback iStatusCallback);

    @Deprecated
    void zzy(boolean z);

    void zzz(boolean z, IStatusCallback iStatusCallback);
}
