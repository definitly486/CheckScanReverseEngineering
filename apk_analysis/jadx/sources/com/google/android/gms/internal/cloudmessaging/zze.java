package com.google.android.gms.internal.cloudmessaging;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.cloudmessaging.UnregisterRequest;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zze extends zza implements IInterface {
    public final void zzc(zzg zzgVar, RegisterRequest registerRequest, ApiMetadata apiMetadata) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
        zzc.zzc(parcelObtain, zzgVar);
        zzc.zzb(parcelObtain, registerRequest);
        zzc.zzb(parcelObtain, apiMetadata);
        f(parcelObtain, 1);
    }

    public final void zzd(IStatusCallback iStatusCallback, UnregisterRequest unregisterRequest, ApiMetadata apiMetadata) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
        zzc.zzc(parcelObtain, iStatusCallback);
        zzc.zzb(parcelObtain, unregisterRequest);
        zzc.zzb(parcelObtain, apiMetadata);
        f(parcelObtain, 2);
    }
}
