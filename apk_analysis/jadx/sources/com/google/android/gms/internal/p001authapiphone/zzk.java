package com.google.android.gms.internal.p001authapiphone;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk extends zza implements IInterface {
    public final void zzc(zzm zzmVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzmVar);
        g(parcelF, 1);
    }

    public final void zzd(String str, zzm zzmVar) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        zzc.zzb(parcelF, zzmVar);
        g(parcelF, 2);
    }

    public final void zze(IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, iStatusCallback);
        g(parcelF, 3);
    }

    public final void zzf(zze zzeVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzeVar);
        g(parcelF, 4);
    }

    public final void zzg(String str, zzj zzjVar) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        zzc.zzb(parcelF, zzjVar);
        g(parcelF, 5);
    }

    public final void zzh(IStatusCallback iStatusCallback) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, iStatusCallback);
        g(parcelF, 6);
    }
}
