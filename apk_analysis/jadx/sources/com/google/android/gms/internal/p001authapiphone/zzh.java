package com.google.android.gms.internal.p001authapiphone;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.phone.IncomingCallRetrieverRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class zzh extends zza implements IInterface {
    public final void zzc(zzg zzgVar, IncomingCallRetrieverRequest incomingCallRetrieverRequest) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzgVar);
        if (incomingCallRetrieverRequest == null) {
            parcelF.writeInt(0);
        } else {
            parcelF.writeInt(1);
            incomingCallRetrieverRequest.writeToParcel(parcelF, 0);
        }
        g(parcelF, 1);
    }

    public final void zzd(zzg zzgVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, zzgVar);
        g(parcelF, 2);
    }
}
