package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaj extends zza implements IInterface {
    public final void zzd() {
        h(f(), 3);
    }

    public final zzu[] zze(IObjectWrapper iObjectWrapper, zzan zzanVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, iObjectWrapper);
        zzc.zza(parcelF, zzanVar);
        Parcel parcelG = g(parcelF, 1);
        zzu[] zzuVarArr = (zzu[]) parcelG.createTypedArray(zzu.CREATOR);
        parcelG.recycle();
        return zzuVarArr;
    }

    public final zzu[] zzf(IObjectWrapper iObjectWrapper, zzan zzanVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, iObjectWrapper);
        zzc.zza(parcelF, zzanVar);
        Parcel parcelG = g(parcelF, 2);
        zzu[] zzuVarArr = (zzu[]) parcelG.createTypedArray(zzu.CREATOR);
        parcelG.recycle();
        return zzuVarArr;
    }
}
