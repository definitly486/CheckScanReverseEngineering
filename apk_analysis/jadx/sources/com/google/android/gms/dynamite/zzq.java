package com.google.android.gms.dynamite;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq extends zza implements IInterface {
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(i);
        zzc.zze(parcelG, iObjectWrapper2);
        Parcel parcelF = f(parcelG, 2);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzf(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(i);
        zzc.zze(parcelG, iObjectWrapper2);
        Parcel parcelF = f(parcelG, 3);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }
}
