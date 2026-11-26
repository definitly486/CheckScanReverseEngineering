package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zar extends com.google.android.gms.internal.base.zaa implements IInterface {
    public final IObjectWrapper zae(IObjectWrapper iObjectWrapper, zaac zaacVar) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, iObjectWrapper);
        com.google.android.gms.internal.base.zac.zab(parcelF, zaacVar);
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.a.transact(2, parcelF, parcelObtain, 0);
                parcelObtain.readException();
                parcelF.recycle();
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelObtain.readStrongBinder());
                parcelObtain.recycle();
                return iObjectWrapperAsInterface;
            } catch (RuntimeException e) {
                parcelObtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcelF.recycle();
            throw th;
        }
    }
}
