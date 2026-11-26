package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzx extends com.google.android.gms.internal.location.zzb implements zzy {
    public zzx() {
        super("com.google.android.gms.location.ILocationListener");
    }

    public static zzy zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return iInterfaceQueryLocalInterface instanceof zzy ? (zzy) iInterfaceQueryLocalInterface : new zzw(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zze();
            return true;
        }
        Location location = (Location) com.google.android.gms.internal.location.zzc.zza(parcel, Location.CREATOR);
        com.google.android.gms.internal.location.zzc.zzd(parcel);
        zzd(location);
        return true;
    }
}
