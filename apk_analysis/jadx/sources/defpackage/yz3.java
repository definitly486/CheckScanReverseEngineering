package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface yz3 extends IInterface {
    public static final String j = "android$support$customtabs$trusted$ITrustedWebActivityService".replace('$', '.');

    public static abstract class a extends Binder implements yz3 {
        static final int TRANSACTION_areNotificationsEnabled = 6;
        static final int TRANSACTION_cancelNotification = 3;
        static final int TRANSACTION_extraCommand = 9;
        static final int TRANSACTION_getActiveNotifications = 5;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_getSmallIconBitmap = 7;
        static final int TRANSACTION_getSmallIconId = 4;
        static final int TRANSACTION_notifyNotificationWithChannel = 2;

        /* JADX INFO: renamed from: yz3$a$a, reason: collision with other inner class name */
        public static class C0368a implements yz3 {
            public IBinder a;

            @Override // defpackage.yz3
            public final Bundle areNotificationsEnabled(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(6, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method areNotificationsEnabled is unimplemented.");
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

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.yz3
            public final void cancelNotification(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method cancelNotification is unimplemented.");
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

            @Override // defpackage.yz3
            public final Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.a.transact(9, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method extraCommand is unimplemented.");
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

            @Override // defpackage.yz3
            public final Bundle getActiveNotifications() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    if (!this.a.transact(5, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method getActiveNotifications is unimplemented.");
                    }
                    parcelObtain2.readException();
                    Bundle bundle = (Bundle) parcelObtain2.readTypedObject(Bundle.CREATOR);
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.yz3
            public final Bundle getSmallIconBitmap() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    if (!this.a.transact(7, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method getSmallIconBitmap is unimplemented.");
                    }
                    parcelObtain2.readException();
                    Bundle bundle = (Bundle) parcelObtain2.readTypedObject(Bundle.CREATOR);
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.yz3
            public final int getSmallIconId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    if (!this.a.transact(4, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method getSmallIconId is unimplemented.");
                    }
                    parcelObtain2.readException();
                    int i = parcelObtain2.readInt();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return i;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.yz3
            public final Bundle notifyNotificationWithChannel(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(yz3.j);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method notifyNotificationWithChannel is unimplemented.");
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
        }

        public a() {
            attachInterface(this, yz3.j);
        }

        public static yz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(yz3.j);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof yz3)) {
                return (yz3) iInterfaceQueryLocalInterface;
            }
            C0368a c0368a = new C0368a();
            c0368a.a = iBinder;
            return c0368a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = yz3.j;
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
            switch (i) {
                case 2:
                    Bundle bundleNotifyNotificationWithChannel = notifyNotificationWithChannel((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleNotifyNotificationWithChannel, 1);
                    return true;
                case 3:
                    cancelNotification((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int smallIconId = getSmallIconId();
                    parcel2.writeNoException();
                    parcel2.writeInt(smallIconId);
                    return true;
                case 5:
                    Bundle activeNotifications = getActiveNotifications();
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(activeNotifications, 1);
                    return true;
                case 6:
                    Bundle bundleAreNotificationsEnabled = areNotificationsEnabled((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleAreNotificationsEnabled, 1);
                    return true;
                case 7:
                    Bundle smallIconBitmap = getSmallIconBitmap();
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(smallIconBitmap, 1);
                    return true;
                case 8:
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
                case 9:
                    Bundle bundleExtraCommand = extraCommand(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleExtraCommand, 1);
                    return true;
            }
        }
    }

    Bundle areNotificationsEnabled(Bundle bundle);

    void cancelNotification(Bundle bundle);

    Bundle extraCommand(String str, Bundle bundle, IBinder iBinder);

    Bundle getActiveNotifications();

    int getInterfaceVersion();

    Bundle getSmallIconBitmap();

    int getSmallIconId();

    Bundle notifyNotificationWithChannel(Bundle bundle);
}
