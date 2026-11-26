package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface vz3 extends IInterface {
    public static final String h = "android$support$customtabs$IPostMessageService".replace('$', '.');

    public static abstract class a extends Binder implements vz3 {
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onMessageChannelReady = 2;
        static final int TRANSACTION_onPostMessage = 3;

        /* JADX INFO: renamed from: vz3$a$a, reason: collision with other inner class name */
        public static class C0346a implements vz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.vz3
            public final void onMessageChannelReady(qz3 qz3Var, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(vz3.h);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method onMessageChannelReady is unimplemented.");
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

            @Override // defpackage.vz3
            public final void onPostMessage(qz3 qz3Var, String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(vz3.h);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method onPostMessage is unimplemented.");
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
            attachInterface(this, vz3.h);
        }

        public static vz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(vz3.h);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof vz3)) {
                return (vz3) iInterfaceQueryLocalInterface;
            }
            C0346a c0346a = new C0346a();
            c0346a.a = iBinder;
            return c0346a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = vz3.h;
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
            if (i == 2) {
                onMessageChannelReady(qz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onPostMessage(qz3.a.asInterface(parcel.readStrongBinder()), parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }
    }

    int getInterfaceVersion();

    void onMessageChannelReady(qz3 qz3Var, Bundle bundle);

    void onPostMessage(qz3 qz3Var, String str, Bundle bundle);
}
