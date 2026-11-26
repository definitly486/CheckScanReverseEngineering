package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface sz3 extends IInterface {
    public static final String f = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

    public static abstract class a extends Binder implements sz3 {
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onGreatestScrollPercentageIncreased = 3;
        static final int TRANSACTION_onSessionEnded = 4;
        static final int TRANSACTION_onVerticalScrollEvent = 2;

        /* JADX INFO: renamed from: sz3$a$a, reason: collision with other inner class name */
        public static class C0333a implements sz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.sz3
            public final void onGreatestScrollPercentageIncreased(int i, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(sz3.f);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(3, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onGreatestScrollPercentageIncreased is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.sz3
            public final void onSessionEnded(boolean z, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(sz3.f);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(4, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onSessionEnded is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.sz3
            public final void onVerticalScrollEvent(boolean z, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(sz3.f);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(2, parcelObtain, null, 1)) {
                        throw new RemoteException("Method onVerticalScrollEvent is unimplemented.");
                    }
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public a() {
            attachInterface(this, sz3.f);
        }

        public static sz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(sz3.f);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof sz3)) {
                return (sz3) iInterfaceQueryLocalInterface;
            }
            C0333a c0333a = new C0333a();
            c0333a.a = iBinder;
            return c0333a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = sz3.f;
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
                onVerticalScrollEvent(parcel.readInt() != 0, (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            } else if (i == 3) {
                onGreatestScrollPercentageIncreased(parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            } else {
                if (i != 4) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onSessionEnded(parcel.readInt() != 0, (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            }
            return true;
        }
    }

    int getInterfaceVersion();

    void onGreatestScrollPercentageIncreased(int i, Bundle bundle);

    void onSessionEnded(boolean z, Bundle bundle);

    void onVerticalScrollEvent(boolean z, Bundle bundle);
}
