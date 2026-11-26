package com.google.android.gms.internal.auth;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbh extends zza implements IInterface {
    public final void zzd(zzbg zzbgVar) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzbgVar);
        h(parcelF, 3);
    }

    public final void zze(zzbg zzbgVar, ProxyRequest proxyRequest) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzbgVar);
        zzc.zzc(parcelF, proxyRequest);
        h(parcelF, 1);
    }
}
