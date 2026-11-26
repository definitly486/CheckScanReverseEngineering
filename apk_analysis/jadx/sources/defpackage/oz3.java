package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface oz3 extends IInterface {
    public static final String c = "android$support$customtabs$IAuthTabCallback".replace('$', '.');

    public static abstract class a extends Binder implements oz3 {
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onExtraCallback = 3;
        static final int TRANSACTION_onExtraCallbackWithResult = 4;
        static final int TRANSACTION_onNavigationEvent = 2;
        static final int TRANSACTION_onWarmupCompleted = 5;

        /* JADX INFO: renamed from: oz3$a$a, reason: collision with other inner class name */
        public static class C0313a implements oz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.oz3
            public final void onExtraCallback(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(oz3.c);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(3, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onExtraCallback is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.oz3
            public final Bundle onExtraCallbackWithResult(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(oz3.c);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(4, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method onExtraCallbackWithResult is unimplemented.");
                    }
                    parcelObtain2.readException();
                    Bundle bundle2 = (Bundle) parcelObtain2.readTypedObject(Bundle.CREATOR);
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.oz3
            public final void onNavigationEvent(int i, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(oz3.c);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(2, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onNavigationEvent is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.oz3
            public final void onWarmupCompleted(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(oz3.c);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(5, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onWarmupCompleted is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public a() {
            attachInterface(this, oz3.c);
        }

        public static oz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(oz3.c);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof oz3)) {
                return (oz3) iInterfaceQueryLocalInterface;
            }
            C0313a c0313a = new C0313a();
            c0313a.a = iBinder;
            return c0313a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = oz3.c;
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
                onNavigationEvent(parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            } else if (i == 3) {
                onExtraCallback(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            } else if (i == 4) {
                Bundle bundleOnExtraCallbackWithResult = onExtraCallbackWithResult(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedObject(bundleOnExtraCallbackWithResult, 1);
            } else {
                if (i != 5) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onWarmupCompleted((Bundle) parcel.readTypedObject(Bundle.CREATOR));
            }
            return true;
        }
    }

    int getInterfaceVersion();

    void onExtraCallback(String str, Bundle bundle);

    Bundle onExtraCallbackWithResult(String str, Bundle bundle);

    void onNavigationEvent(int i, Bundle bundle);

    void onWarmupCompleted(Bundle bundle);
}
