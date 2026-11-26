package com.google.android.gms.internal.fido;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fido.fido2.api.common.BrowserPublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.BrowserPublicKeyCredentialRequestOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn extends zza implements IInterface {
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzc(zzg zzgVar, String str) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzgVar);
        parcelF.writeString(str);
        g(parcelF, 4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzd(zzm zzmVar, BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzmVar);
        zzc.zzd(parcelF, browserPublicKeyCredentialCreationOptions);
        g(parcelF, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zze(zzm zzmVar, BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzmVar);
        zzc.zzd(parcelF, browserPublicKeyCredentialRequestOptions);
        g(parcelF, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzf(zze zzeVar) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzeVar);
        g(parcelF, 3);
    }
}
