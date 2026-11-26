package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzr extends zzb implements zzs {
    public zzr() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i == 1) {
            int i2 = parcel.readInt();
            String[] strArrCreateStringArray = parcel.createStringArray();
            ApiMetadata apiMetadata = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
            zzc.zzd(parcel);
            zzb(i2, strArrCreateStringArray, apiMetadata);
            return true;
        }
        if (i == 2) {
            int i3 = parcel.readInt();
            String[] strArrCreateStringArray2 = parcel.createStringArray();
            ApiMetadata apiMetadata2 = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
            zzc.zzd(parcel);
            zzc(i3, strArrCreateStringArray2, apiMetadata2);
            return true;
        }
        if (i != 3) {
            return false;
        }
        int i4 = parcel.readInt();
        PendingIntent pendingIntent = (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR);
        ApiMetadata apiMetadata3 = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
        zzc.zzd(parcel);
        zzd(i4, pendingIntent, apiMetadata3);
        return true;
    }
}
