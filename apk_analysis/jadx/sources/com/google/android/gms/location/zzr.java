package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzr extends com.google.android.gms.internal.location.zzb implements zzs {
    public zzr() {
        super("com.google.android.gms.location.IDeviceOrientationListener");
    }

    public static zzs zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return iInterfaceQueryLocalInterface instanceof zzs ? (zzs) iInterfaceQueryLocalInterface : new zzq(iBinder, "com.google.android.gms.location.IDeviceOrientationListener");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        DeviceOrientation deviceOrientation = (DeviceOrientation) com.google.android.gms.internal.location.zzc.zza(parcel, DeviceOrientation.CREATOR);
        com.google.android.gms.internal.location.zzc.zzd(parcel);
        zzd(deviceOrientation);
        return true;
    }
}
