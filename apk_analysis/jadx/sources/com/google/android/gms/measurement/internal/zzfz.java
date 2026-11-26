package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzbl;
import com.google.android.gms.internal.measurement.zzbn;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfz extends zzbl implements zzgb {
    public zzfz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzA(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 27);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzB(zzr zzrVar, zzoo zzooVar, zzgh zzghVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        zzbn.zzc(parcelG, zzooVar);
        zzbn.zzd(parcelG, zzghVar);
        h(parcelG, 29);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzC(zzr zzrVar, zzaf zzafVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        zzbn.zzc(parcelG, zzafVar);
        h(parcelG, 30);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzD(zzr zzrVar, Bundle bundle, zzge zzgeVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        zzbn.zzc(parcelG, bundle);
        zzbn.zzd(parcelG, zzgeVar);
        h(parcelG, 31);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzbh zzbhVar, zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzbhVar);
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 1);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzpl zzplVar, zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzplVar);
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 4);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzbh zzbhVar, String str, String str2) {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 6);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzj(zzr zzrVar, boolean z) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        parcelG.writeInt(z ? 1 : 0);
        Parcel parcelF = f(parcelG, 7);
        ArrayList arrayListCreateTypedArrayList = parcelF.createTypedArrayList(zzpl.CREATOR);
        parcelF.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zzk(zzbh zzbhVar, String str) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzbhVar);
        parcelG.writeString(str);
        Parcel parcelF = f(parcelG, 9);
        byte[] bArrCreateByteArray = parcelF.createByteArray();
        parcelF.recycle();
        return bArrCreateByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzl(long j, String str, String str2, String str3) {
        Parcel parcelG = g();
        parcelG.writeLong(j);
        parcelG.writeString(str);
        parcelG.writeString(str2);
        parcelG.writeString(str3);
        h(parcelG, 10);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzm(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        Parcel parcelF = f(parcelG, 11);
        String string = parcelF.readString();
        parcelF.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzn(zzah zzahVar, zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzahVar);
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 12);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzo(zzah zzahVar) {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzp(String str, String str2, boolean z, zzr zzrVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        ClassLoader classLoader = zzbn.a;
        parcelG.writeInt(z ? 1 : 0);
        zzbn.zzc(parcelG, zzrVar);
        Parcel parcelF = f(parcelG, 14);
        ArrayList arrayListCreateTypedArrayList = parcelF.createTypedArrayList(zzpl.CREATOR);
        parcelF.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzq(String str, String str2, String str3, boolean z) {
        Parcel parcelG = g();
        parcelG.writeString(null);
        parcelG.writeString(str2);
        parcelG.writeString(str3);
        ClassLoader classLoader = zzbn.a;
        parcelG.writeInt(z ? 1 : 0);
        Parcel parcelF = f(parcelG, 15);
        ArrayList arrayListCreateTypedArrayList = parcelF.createTypedArrayList(zzpl.CREATOR);
        parcelF.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzr(String str, String str2, zzr zzrVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzc(parcelG, zzrVar);
        Parcel parcelF = f(parcelG, 16);
        ArrayList arrayListCreateTypedArrayList = parcelF.createTypedArrayList(zzah.CREATOR);
        parcelF.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzs(String str, String str2, String str3) {
        Parcel parcelG = g();
        parcelG.writeString(null);
        parcelG.writeString(str2);
        parcelG.writeString(str3);
        Parcel parcelF = f(parcelG, 17);
        ArrayList arrayListCreateTypedArrayList = parcelF.createTypedArrayList(zzah.CREATOR);
        parcelF.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzt(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 18);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzu(Bundle bundle, zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 19);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzv(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 20);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzao zzw(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        Parcel parcelF = f(parcelG, 21);
        zzao zzaoVar = (zzao) zzbn.zzb(parcelF, zzao.CREATOR);
        parcelF.recycle();
        return zzaoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List zzx(zzr zzrVar, Bundle bundle) {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzy(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 25);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzz(zzr zzrVar) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzrVar);
        h(parcelG, 26);
    }
}
