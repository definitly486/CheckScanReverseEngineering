package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes3.dex */
public final class zzap extends zzau implements zzar {
    @Override // com.google.android.gms.internal.play_billing.zzar
    public final int zza(int i, String str, String str2) {
        Parcel parcelF = f();
        parcelF.writeInt(3);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        Parcel parcelG = g(parcelF, 5);
        int i2 = parcelG.readInt();
        parcelG.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final int zzb(int i, String str, String str2) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        Parcel parcelG = g(parcelF, 1);
        int i2 = parcelG.readInt();
        parcelG.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final int zzc(int i, String str, String str2, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        zzaw.zzb(parcelF, bundle);
        Parcel parcelG = g(parcelF, 10);
        int i2 = parcelG.readInt();
        parcelG.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzd(int i, String str, String str2, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeInt(9);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        zzaw.zzb(parcelF, bundle);
        Parcel parcelG = g(parcelF, TypedValues.Custom.TYPE_COLOR);
        Bundle bundle2 = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zze(int i, String str, String str2, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeInt(9);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        zzaw.zzb(parcelF, bundle);
        Parcel parcelG = g(parcelF, 12);
        Bundle bundle2 = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzf(int i, String str, String str2, String str3, String str4) {
        Parcel parcelF = f();
        parcelF.writeInt(3);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        parcelF.writeString(null);
        Parcel parcelG = g(parcelF, 3);
        Bundle bundle = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzg(int i, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        parcelF.writeString(null);
        zzaw.zzb(parcelF, bundle);
        Parcel parcelG = g(parcelF, 8);
        Bundle bundle2 = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzh(int i, String str, String str2, String str3) {
        Parcel parcelF = f();
        parcelF.writeInt(3);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        Parcel parcelG = g(parcelF, 4);
        Bundle bundle = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzi(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        parcelF.writeString(str3);
        zzaw.zzb(parcelF, bundle);
        Parcel parcelG = g(parcelF, 11);
        Bundle bundle2 = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final Bundle zzj(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        parcelF.writeString(str2);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzb(parcelF, bundle2);
        Parcel parcelG = g(parcelF, TypedValues.Custom.TYPE_FLOAT);
        Bundle bundle3 = (Bundle) zzaw.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzk(int i, String str, Bundle bundle, zzx zzxVar) {
        Parcel parcelF = f();
        parcelF.writeInt(21);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzxVar);
        i(parcelF, 1501);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzl(int i, String str, Bundle bundle, zzz zzzVar) {
        Parcel parcelF = f();
        parcelF.writeInt(22);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzzVar);
        i(parcelF, 1801);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzm(Bundle bundle, zzac zzacVar) {
        Parcel parcelF = f();
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzacVar);
        i(parcelF, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzn(int i, String str, Bundle bundle, zzae zzaeVar) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzaeVar);
        i(parcelF, 1601);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzo(int i, String str, Bundle bundle, zzag zzagVar) {
        Parcel parcelF = f();
        parcelF.writeInt(18);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzagVar);
        h(parcelF, 1301);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzp(int i, String str, Bundle bundle, zzai zzaiVar) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzaiVar);
        i(parcelF, 1901);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzq(int i, String str, Bundle bundle, zzak zzakVar) {
        Parcel parcelF = f();
        parcelF.writeInt(25);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzakVar);
        i(parcelF, 2101);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzr(int i, String str, Bundle bundle, zzam zzamVar) {
        Parcel parcelF = f();
        parcelF.writeInt(21);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzamVar);
        i(parcelF, 1401);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzs(int i, String str, Bundle bundle, zzao zzaoVar) {
        Parcel parcelF = f();
        parcelF.writeInt(24);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzaoVar);
        i(parcelF, 1701);
    }

    @Override // com.google.android.gms.internal.play_billing.zzar
    public final void zzt(int i, String str, Bundle bundle, zzat zzatVar) {
        Parcel parcelF = f();
        parcelF.writeInt(12);
        parcelF.writeString(str);
        zzaw.zzb(parcelF, bundle);
        zzaw.zzc(parcelF, zzatVar);
        h(parcelF, 1201);
    }
}
