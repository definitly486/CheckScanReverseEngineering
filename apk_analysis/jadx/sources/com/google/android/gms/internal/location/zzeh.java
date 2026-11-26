package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzeh> CREATOR = new zzei();
    public final int b;
    public final zzef c;
    public final com.google.android.gms.location.zzy d;
    public final com.google.android.gms.location.zzv e;
    public final PendingIntent f;
    public final zzq g;
    public final String h;

    public zzeh(int i, zzef zzefVar, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, IBinder iBinder3, String str) {
        this.b = i;
        this.c = zzefVar;
        zzq zzoVar = null;
        this.d = iBinder != null ? com.google.android.gms.location.zzx.zzb(iBinder) : null;
        this.f = pendingIntent;
        this.e = iBinder2 != null ? com.google.android.gms.location.zzu.zzb(iBinder2) : null;
        if (iBinder3 != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzoVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzo(iBinder3);
        }
        this.g = zzoVar;
        this.h = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
        com.google.android.gms.location.zzy zzyVar = this.d;
        SafeParcelWriter.writeIBinder(parcel, 3, zzyVar == null ? null : zzyVar.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f, i, false);
        com.google.android.gms.location.zzv zzvVar = this.e;
        SafeParcelWriter.writeIBinder(parcel, 5, zzvVar == null ? null : zzvVar.asBinder(), false);
        zzq zzqVar = this.g;
        SafeParcelWriter.writeIBinder(parcel, 6, zzqVar != null ? zzqVar.asBinder() : null, false);
        SafeParcelWriter.writeString(parcel, 8, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
