package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new zzj();
    public final int b;
    public final zzg c;
    public final com.google.android.gms.location.zzs d;
    public final zzq e;

    public zzi(int i, zzg zzgVar, IBinder iBinder, IBinder iBinder2) {
        this.b = i;
        this.c = zzgVar;
        zzq zzoVar = null;
        this.d = iBinder == null ? null : com.google.android.gms.location.zzr.zzb(iBinder);
        if (iBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzoVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzo(iBinder2);
        }
        this.e = zzoVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
        com.google.android.gms.location.zzs zzsVar = this.d;
        SafeParcelWriter.writeIBinder(parcel, 3, zzsVar == null ? null : zzsVar.asBinder(), false);
        zzq zzqVar = this.e;
        SafeParcelWriter.writeIBinder(parcel, 4, zzqVar != null ? zzqVar.asBinder() : null, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
