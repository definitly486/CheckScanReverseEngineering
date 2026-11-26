package com.google.android.gms.internal.play_billing;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.jh;

/* JADX INFO: loaded from: classes4.dex */
public class zzav extends Binder implements IInterface {
    private static zzax globalInterceptor;

    public zzav(String str) {
        attachInterface(this, str);
    }

    public static synchronized void installTransactionInterceptorPackagePrivate(zzax zzaxVar) {
        try {
            if (zzaxVar == null) {
                throw new IllegalArgumentException("null interceptor");
            }
            if (globalInterceptor != null) {
                throw new IllegalStateException("Duplicate TransactionInterceptor installation.");
            }
            globalInterceptor = zzaxVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean routeToSuperOrEnforceInterface(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i > 16777215) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        parcel.enforceInterface(getInterfaceDescriptor());
        return false;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
        return false;
    }

    public void enforceNoDataAvail(Parcel parcel) {
        zzax zzaxVar = globalInterceptor;
        if (zzaxVar != null) {
            zzaxVar.zza();
            return;
        }
        int i = zzaw.zza;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(jh.b(iDataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (routeToSuperOrEnforceInterface(i, parcel, parcel2, i2)) {
            return true;
        }
        zzax zzaxVar = globalInterceptor;
        return zzaxVar == null ? dispatchTransaction(i, parcel, parcel2, i2) : zzaxVar.zzb();
    }
}
