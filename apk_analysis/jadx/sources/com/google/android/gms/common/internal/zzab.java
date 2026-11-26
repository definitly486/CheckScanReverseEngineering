package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.common.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab extends zza implements zzad {
    @Override // com.google.android.gms.common.internal.zzad
    public final boolean zze(com.google.android.gms.common.zzt zztVar, IObjectWrapper iObjectWrapper) {
        Parcel parcelG = g();
        com.google.android.gms.internal.common.zzc.zzc(parcelG, zztVar);
        com.google.android.gms.internal.common.zzc.zze(parcelG, iObjectWrapper);
        Parcel parcelF = f(parcelG, 5);
        boolean zZza = com.google.android.gms.internal.common.zzc.zza(parcelF);
        parcelF.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final com.google.android.gms.common.zzr zzf(zzp zzpVar) {
        Parcel parcelG = g();
        com.google.android.gms.internal.common.zzc.zzc(parcelG, zzpVar);
        Parcel parcelF = f(parcelG, 6);
        com.google.android.gms.common.zzr zzrVar = (com.google.android.gms.common.zzr) com.google.android.gms.internal.common.zzc.zzb(parcelF, com.google.android.gms.common.zzr.CREATOR);
        parcelF.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final boolean zzg() {
        Parcel parcelF = f(g(), 7);
        boolean zZza = com.google.android.gms.internal.common.zzc.zza(parcelF);
        parcelF.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final com.google.android.gms.common.zzr zzh(zzp zzpVar) {
        Parcel parcelG = g();
        com.google.android.gms.internal.common.zzc.zzc(parcelG, zzpVar);
        Parcel parcelF = f(parcelG, 8);
        com.google.android.gms.common.zzr zzrVar = (com.google.android.gms.common.zzr) com.google.android.gms.internal.common.zzc.zzb(parcelF, com.google.android.gms.common.zzr.CREATOR);
        parcelF.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final boolean zzi() {
        Parcel parcelF = f(g(), 9);
        boolean zZza = com.google.android.gms.internal.common.zzc.zza(parcelF);
        parcelF.recycle();
        return zZza;
    }
}
