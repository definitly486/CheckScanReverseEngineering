package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzy extends zza implements IGmsCallbacks {
    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) {
        Parcel parcelG = g();
        parcelG.writeInt(i);
        parcelG.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.zzc.zzc(parcelG, bundle);
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.a.transact(1, parcelG, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcelG.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i, Bundle bundle) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i, IBinder iBinder, zzj zzjVar) {
        throw null;
    }
}
