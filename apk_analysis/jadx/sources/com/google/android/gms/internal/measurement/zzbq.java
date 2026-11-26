package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbq extends zzbl implements zzbs {
    @Override // com.google.android.gms.internal.measurement.zzbs
    public final Bundle zze(Bundle bundle) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        Parcel parcelF = f(parcelG, 1);
        Bundle bundle2 = (Bundle) zzbn.zzb(parcelF, Bundle.CREATOR);
        parcelF.recycle();
        return bundle2;
    }
}
