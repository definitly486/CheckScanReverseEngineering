package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv extends zza implements zzx {
    @Override // com.google.android.gms.common.internal.zzx
    public final IObjectWrapper zzd() {
        Parcel parcelF = f(g(), 1);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int zze() {
        Parcel parcelF = f(g(), 2);
        int i = parcelF.readInt();
        parcelF.recycle();
        return i;
    }
}
