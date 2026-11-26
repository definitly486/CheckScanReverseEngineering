package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzm extends zzb implements zzn {
    public zzm() {
        super("com.google.android.gms.location.internal.IBooleanStatusCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) zzc.zza(parcel, Status.CREATOR);
        boolean z = parcel.readInt() != 0;
        ApiMetadata apiMetadata = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
        zzc.zzd(parcel);
        zzb(status, z, apiMetadata);
        return true;
    }
}
