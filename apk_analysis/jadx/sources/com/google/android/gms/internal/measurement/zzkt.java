package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkt extends zzbl implements IInterface {
    public final void zze(zzks zzksVar, String str, int i, String[] strArr, byte[] bArr) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzksVar);
        parcelG.writeString(str);
        parcelG.writeInt(0);
        parcelG.writeStringArray(strArr);
        parcelG.writeByteArray(null);
        h(parcelG, 1);
    }

    public final void zzf(zzks zzksVar, String str, String str2, String str3) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzksVar);
        parcelG.writeString(str);
        parcelG.writeString("");
        parcelG.writeString(null);
        h(parcelG, 11);
    }

    public final void zzg(zzks zzksVar, String str) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzksVar);
        parcelG.writeString(str);
        h(parcelG, 5);
    }

    public final void zzh(zzks zzksVar, byte[] bArr) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzksVar);
        parcelG.writeByteArray(bArr);
        h(parcelG, 31);
    }

    public final void zzi(zzkq zzkqVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzkqVar);
        h(parcelG, 27);
    }

    public final void zzj(String str, zzko zzkoVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        zzbn.zzd(parcelG, zzkoVar);
        h(parcelG, 28);
    }
}
