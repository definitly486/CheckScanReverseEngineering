package com.google.android.gms.internal.cloudmessaging;

import android.os.BadParcelableException;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import defpackage.ag;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzf extends zzb implements zzg {
    public zzf() {
        attachInterface(this, "com.google.android.gms.cloudmessaging.internal.IRegisterCallback");
    }

    @Override // com.google.android.gms.internal.cloudmessaging.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) zzc.zza(parcel, Status.CREATOR);
        String string = parcel.readString();
        ApiMetadata apiMetadata = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(ag.d(new StringBuilder(String.valueOf(iDataAvail).length() + 45), "Parcel data not fully consumed, unread size: ", iDataAvail));
        }
        zzb(status, string, apiMetadata);
        return true;
    }
}
