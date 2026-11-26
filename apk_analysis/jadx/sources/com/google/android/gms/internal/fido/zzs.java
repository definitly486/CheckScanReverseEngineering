package com.google.android.gms.internal.fido;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRequestOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs extends zza implements IInterface {
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzc(zzr zzrVar, PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzrVar);
        zzc.zzd(parcelF, publicKeyCredentialCreationOptions);
        g(parcelF, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzd(zzr zzrVar, PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzrVar);
        zzc.zzd(parcelF, publicKeyCredentialRequestOptions);
        g(parcelF, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zze(zze zzeVar) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzeVar);
        g(parcelF, 3);
    }
}
