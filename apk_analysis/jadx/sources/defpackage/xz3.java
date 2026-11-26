package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface xz3 extends IInterface {
    public static final String i = "android$support$customtabs$trusted$ITrustedWebActivityCallback".replace('$', '.');

    public static abstract class a extends Binder implements xz3 {
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onExtraCallback = 2;

        /* JADX INFO: renamed from: xz3$a$a, reason: collision with other inner class name */
        public static class C0359a implements xz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.xz3
            public final void onExtraCallback(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(xz3.i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method onExtraCallback is unimplemented.");
                    }
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public a() {
            attachInterface(this, xz3.i);
        }

        public static xz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(xz3.i);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof xz3)) {
                return (xz3) iInterfaceQueryLocalInterface;
            }
            C0359a c0359a = new C0359a();
            c0359a.a = iBinder;
            return c0359a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = xz3.i;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 16777215) {
                parcel2.writeNoException();
                parcel2.writeInt(getInterfaceVersion());
                return true;
            }
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            onExtraCallback(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    int getInterfaceVersion();

    void onExtraCallback(String str, Bundle bundle);
}
