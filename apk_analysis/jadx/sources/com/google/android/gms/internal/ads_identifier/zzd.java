package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends zza implements zzf {
    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final String zzc() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        Parcel parcelF = f(parcelObtain, 1);
        String string = parcelF.readString();
        parcelF.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zzd(boolean z) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        int i = zzc.zza;
        parcelObtain.writeInt(1);
        Parcel parcelF = f(parcelObtain, 2);
        boolean zZza = zzc.zza(parcelF);
        parcelF.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zze() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        Parcel parcelF = f(parcelObtain, 6);
        boolean zZza = zzc.zza(parcelF);
        parcelF.recycle();
        return zZza;
    }
}
