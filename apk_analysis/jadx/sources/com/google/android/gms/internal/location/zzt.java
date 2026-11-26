package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
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
public final class zzt extends zza implements zzu {
    public zzt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzA(Location location) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, location);
        h(parcelF, 13);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzB(Location location, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, location);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 85);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzC(zzq zzqVar) {
        Parcel parcelF = f();
        zzc.zzc(parcelF, zzqVar);
        h(parcelF, 67);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzD(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar, String str) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, locationSettingsRequest);
        zzc.zzc(parcelF, zzaaVar);
        parcelF.writeString(null);
        h(parcelF, 63);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzE(zzn zznVar) {
        Parcel parcelF = f();
        zzc.zzc(parcelF, zznVar);
        h(parcelF, 95);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzF(zzi zziVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zziVar);
        h(parcelF, 75);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzd(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzs zzsVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, geofencingRequest);
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, zzsVar);
        h(parcelF, 57);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zze(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, geofencingRequest);
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 97);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzf(zzel zzelVar, zzs zzsVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzelVar);
        zzc.zzc(parcelF, zzsVar);
        h(parcelF, 74);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzg(zzel zzelVar, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzelVar);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 98);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzh(long j, boolean z, PendingIntent pendingIntent) {
        Parcel parcelF = f();
        parcelF.writeLong(j);
        int i = zzc.zza;
        parcelF.writeInt(1);
        zzc.zzb(parcelF, pendingIntent);
        h(parcelF, 5);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzi(com.google.android.gms.location.zzb zzbVar, PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzbVar);
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 70);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzj(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, activityTransitionRequest);
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 72);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzk(PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 73);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzl(PendingIntent pendingIntent) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, pendingIntent);
        h(parcelF, 6);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzm(PendingIntent pendingIntent, SleepSegmentRequest sleepSegmentRequest, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzb(parcelF, sleepSegmentRequest);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 79);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzn(PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, pendingIntent);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 69);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzo(zzac zzacVar, zzed zzedVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzacVar);
        zzc.zzb(parcelF, zzedVar);
        h(parcelF, 91);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final LocationAvailability zzp(String str) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        Parcel parcelG = g(parcelF, 34);
        LocationAvailability locationAvailability = (LocationAvailability) zzc.zza(parcelG, LocationAvailability.CREATOR);
        parcelG.recycle();
        return locationAvailability;
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzq(LastLocationRequest lastLocationRequest, zzed zzedVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, lastLocationRequest);
        zzc.zzb(parcelF, zzedVar);
        h(parcelF, 90);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzr(LastLocationRequest lastLocationRequest, zzy zzyVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, lastLocationRequest);
        zzc.zzc(parcelF, zzyVar);
        h(parcelF, 82);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final Location zzs() {
        Parcel parcelG = g(f(), 7);
        Location location = (Location) zzc.zza(parcelG, Location.CREATOR);
        parcelG.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final ICancelToken zzt(CurrentLocationRequest currentLocationRequest, zzed zzedVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, currentLocationRequest);
        zzc.zzb(parcelF, zzedVar);
        Parcel parcelG = g(parcelF, 92);
        ICancelToken iCancelTokenAsInterface = ICancelToken.Stub.asInterface(parcelG.readStrongBinder());
        parcelG.recycle();
        return iCancelTokenAsInterface;
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final ICancelToken zzu(CurrentLocationRequest currentLocationRequest, zzy zzyVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, currentLocationRequest);
        zzc.zzc(parcelF, zzyVar);
        Parcel parcelG = g(parcelF, 87);
        ICancelToken iCancelTokenAsInterface = ICancelToken.Stub.asInterface(parcelG.readStrongBinder());
        parcelG.recycle();
        return iCancelTokenAsInterface;
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzv(zzeh zzehVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzehVar);
        h(parcelF, 59);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzw(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzedVar);
        zzc.zzb(parcelF, locationRequest);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 88);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzx(zzed zzedVar, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzedVar);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 89);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzy(boolean z) {
        Parcel parcelF = f();
        int i = zzc.zza;
        parcelF.writeInt(z ? 1 : 0);
        h(parcelF, 12);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzz(boolean z, IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        int i = zzc.zza;
        parcelF.writeInt(z ? 1 : 0);
        zzc.zzc(parcelF, iStatusCallback);
        h(parcelF, 84);
    }
}
