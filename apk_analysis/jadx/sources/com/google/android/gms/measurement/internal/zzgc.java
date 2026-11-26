package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzbl;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgc extends zzbl implements zzge {
    @Override // com.google.android.gms.measurement.internal.zzge
    public final void zze(List list) {
        Parcel parcelG = g();
        parcelG.writeTypedList(list);
        i(parcelG);
    }
}
