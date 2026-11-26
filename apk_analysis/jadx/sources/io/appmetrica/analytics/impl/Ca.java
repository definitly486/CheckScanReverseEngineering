package io.appmetrica.analytics.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Ca extends Binder implements Da {
    public Ca() {
        attachInterface(this, "ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
    }

    public static Da a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof Da)) ? new Ba(iBinder) : (Da) iInterfaceQueryLocalInterface;
    }

    public abstract /* synthetic */ void a(int i, String str);

    public abstract /* synthetic */ void a(String str);

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
        }
        if (i == 1598968902) {
            parcel2.writeString("ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
            return true;
        }
        if (i == 1) {
            a(parcel.readString());
            parcel2.writeNoException();
        } else {
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            a(parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
        }
        return true;
    }
}
