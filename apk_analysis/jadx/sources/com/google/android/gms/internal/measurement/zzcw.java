package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcw extends zzbl implements zzcy {
    public zzcw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void zze(String str, String str2, Bundle bundle, long j) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzc(parcelG, bundle);
        parcelG.writeLong(j);
        h(parcelG, 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int zzf() {
        Parcel parcelF = f(g(), 2);
        int i = parcelF.readInt();
        parcelF.recycle();
        return i;
    }
}
