package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzw extends zzb implements zzx {
    public zzw() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static zzx zzf(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return iInterfaceQueryLocalInterface instanceof zzx ? (zzx) iInterfaceQueryLocalInterface : new zzv(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean f(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            IObjectWrapper iObjectWrapperZzd = zzd();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.zzc.zze(parcel2, iObjectWrapperZzd);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int iZze = zze();
        parcel2.writeNoException();
        parcel2.writeInt(iZze);
        return true;
    }
}
