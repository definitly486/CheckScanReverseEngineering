package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzu extends com.google.android.gms.internal.location.zzb implements zzv {
    public zzu() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static zzv zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return iInterfaceQueryLocalInterface instanceof zzv ? (zzv) iInterfaceQueryLocalInterface : new zzt(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i == 1) {
            LocationResult locationResult = (LocationResult) com.google.android.gms.internal.location.zzc.zza(parcel, LocationResult.CREATOR);
            com.google.android.gms.internal.location.zzc.zzd(parcel);
            zzd(locationResult);
            return true;
        }
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            zzf();
            return true;
        }
        LocationAvailability locationAvailability = (LocationAvailability) com.google.android.gms.internal.location.zzc.zza(parcel, LocationAvailability.CREATOR);
        com.google.android.gms.internal.location.zzc.zzd(parcel);
        zze(locationAvailability);
        return true;
    }
}
