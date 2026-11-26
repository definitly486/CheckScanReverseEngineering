package com.google.android.gms.internal.play_billing;

import android.os.Parcel;

/* JADX INFO: loaded from: classes3.dex */
public final class zzay extends zzau implements zzba {
    @Override // com.google.android.gms.internal.play_billing.zzba
    public final void zza(String str, String str2, zzbc zzbcVar) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        parcelF.writeString(str2);
        zzaw.zzc(parcelF, zzbcVar);
        i(parcelF, 1);
    }
}
