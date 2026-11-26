package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface qz3 extends IInterface {
    public static final String d = "android$support$customtabs$ICustomTabsCallback".replace('$', '.');

    public static abstract class a extends Binder implements qz3 {
        static final int TRANSACTION_extraCallback = 3;
        static final int TRANSACTION_extraCallbackWithResult = 7;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onActivityLayout = 10;
        static final int TRANSACTION_onActivityResized = 8;
        static final int TRANSACTION_onMessageChannelReady = 4;
        static final int TRANSACTION_onMinimized = 11;
        static final int TRANSACTION_onNavigationEvent = 2;
        static final int TRANSACTION_onPostMessage = 5;
        static final int TRANSACTION_onRelationshipValidationResult = 6;
        static final int TRANSACTION_onUnminimized = 12;
        static final int TRANSACTION_onWarmupCompleted = 9;

        /* JADX INFO: renamed from: qz3$a$a, reason: collision with other inner class name */
        public static class C0322a implements qz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.qz3
            public final void extraCallback(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(3, parcelObtain, null, 1)) {
                        throw new RemoteException("Method extraCallback is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(7, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method extraCallbackWithResult is unimplemented.");
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

            @Override // defpackage.qz3
            public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(10, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onActivityLayout is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final void onActivityResized(int i, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(8, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onActivityResized is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final void onMessageChannelReady(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(4, parcelObtain, parcelObtain2, 0)) {
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

            @Override // defpackage.qz3
            public final void onMinimized(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(11, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onMinimized is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final void onNavigationEvent(int i, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
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

            @Override // defpackage.qz3
            public final void onPostMessage(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(5, parcelObtain, parcelObtain2, 0)) {
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

            @Override // defpackage.qz3
            public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(6, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onRelationshipValidationResult is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final void onUnminimized(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(12, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onUnminimized is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.qz3
            public final void onWarmupCompleted(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(qz3.d);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(9, parcelObtain, null, 1)) {
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
            attachInterface(this, qz3.d);
        }

        public static qz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(qz3.d);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof qz3)) {
                return (qz3) iInterfaceQueryLocalInterface;
            }
            C0322a c0322a = new C0322a();
            c0322a.a = iBinder;
            return c0322a;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = qz3.d;
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
                    onNavigationEvent(parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 3:
                    extraCallback(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 4:
                    onMessageChannelReady((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    onPostMessage(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    onRelationshipValidationResult(parcel.readInt(), (Uri) parcel.readTypedObject(Uri.CREATOR), parcel.readInt() != 0, (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 7:
                    Bundle bundleExtraCallbackWithResult = extraCallbackWithResult(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleExtraCallbackWithResult, 1);
                    return true;
                case 8:
                    onActivityResized(parcel.readInt(), parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 9:
                    onWarmupCompleted((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 10:
                    onActivityLayout(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 11:
                    onMinimized((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                case 12:
                    onUnminimized((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void extraCallback(String str, Bundle bundle);

    Bundle extraCallbackWithResult(String str, Bundle bundle);

    int getInterfaceVersion();

    void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle);

    void onActivityResized(int i, int i2, Bundle bundle);

    void onMessageChannelReady(Bundle bundle);

    void onMinimized(Bundle bundle);

    void onNavigationEvent(int i, Bundle bundle);

    void onPostMessage(String str, Bundle bundle);

    void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle);

    void onUnminimized(Bundle bundle);

    void onWarmupCompleted(Bundle bundle);
}
