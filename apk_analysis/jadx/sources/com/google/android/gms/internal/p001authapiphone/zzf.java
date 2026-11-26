package com.google.android.gms.internal.p001authapiphone;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzf extends zzb implements zzg {
    public zzf() {
        super("com.google.android.gms.auth.api.phone.internal.IMissedCallRetrieverCallbacks");
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzb
    public final boolean f(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR);
        Status status = (Status) zzc.zza(parcel, Status.CREATOR);
        zzc.zzc(parcel);
        zzb(pendingIntent, status);
        return true;
    }
}
