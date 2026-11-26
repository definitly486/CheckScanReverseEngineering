package com.google.android.gms.dynamite;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends zza implements IInterface {
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, String str, int i) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(i);
        Parcel parcelF = f(parcelG, 2);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }

    public final int zzf(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(z ? 1 : 0);
        Parcel parcelF = f(parcelG, 3);
        int i = parcelF.readInt();
        parcelF.recycle();
        return i;
    }

    public final IObjectWrapper zzg(IObjectWrapper iObjectWrapper, String str, int i) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(i);
        Parcel parcelF = f(parcelG, 4);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }

    public final int zzh(IObjectWrapper iObjectWrapper, String str, boolean z) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(z ? 1 : 0);
        Parcel parcelF = f(parcelG, 5);
        int i = parcelF.readInt();
        parcelF.recycle();
        return i;
    }

    public final int zzi() {
        Parcel parcelF = f(g(), 6);
        int i = parcelF.readInt();
        parcelF.recycle();
        return i;
    }

    public final IObjectWrapper zzj(IObjectWrapper iObjectWrapper, String str, boolean z, long j) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(z ? 1 : 0);
        parcelG.writeLong(j);
        Parcel parcelF = f(parcelG, 7);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzk(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) {
        Parcel parcelG = g();
        zzc.zze(parcelG, iObjectWrapper);
        parcelG.writeString(str);
        parcelG.writeInt(i);
        zzc.zze(parcelG, iObjectWrapper2);
        Parcel parcelF = f(parcelG, 8);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelF.readStrongBinder());
        parcelF.recycle();
        return iObjectWrapperAsInterface;
    }
}
