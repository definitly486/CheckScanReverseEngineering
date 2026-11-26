package com.google.android.gms.internal.fido;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fido.u2f.api.common.RegisterRequestParams;
import com.google.android.gms.fido.u2f.api.common.SignRequestParams;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw extends zza implements IInterface {
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzc(zzv zzvVar, RegisterRequestParams registerRequestParams) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzvVar);
        zzc.zzd(parcelF, registerRequestParams);
        g(parcelF, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzd(zzv zzvVar, SignRequestParams signRequestParams) {
        Parcel parcelF = f();
        ClassLoader classLoader = zzc.a;
        parcelF.writeStrongBinder(zzvVar);
        zzc.zzd(parcelF, signRequestParams);
        g(parcelF, 2);
    }
}
