package io.appmetrica.analytics.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1072lb extends Binder implements InterfaceC1098mb {
    public AbstractBinderC1072lb() {
        attachInterface(this, "ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
    }

    public static InterfaceC1098mb a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1098mb)) ? new C1046kb(iBinder) : (InterfaceC1098mb) iInterfaceQueryLocalInterface;
    }

    public abstract /* synthetic */ void a(String str, Da da);

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
        }
        if (i == 1598968902) {
            parcel2.writeString("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
            return true;
        }
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        a(parcel.readString(), Ca.a(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
