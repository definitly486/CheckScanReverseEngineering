package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface rz3 extends IInterface {
    public static final String e = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    public static abstract class a extends Binder implements rz3 {
        static final int TRANSACTION_extraCommand = 5;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_isEngagementSignalsApiAvailable = 13;
        static final int TRANSACTION_mayLaunchUrl = 4;
        static final int TRANSACTION_newAuthTabSession = 18;
        static final int TRANSACTION_newSession = 3;
        static final int TRANSACTION_newSessionWithExtras = 10;
        static final int TRANSACTION_postMessage = 8;
        static final int TRANSACTION_prefetch = 15;
        static final int TRANSACTION_prefetchWithMultipleUrls = 16;
        static final int TRANSACTION_receiveFile = 12;
        static final int TRANSACTION_requestPostMessageChannel = 7;
        static final int TRANSACTION_requestPostMessageChannelWithExtras = 11;
        static final int TRANSACTION_setEngagementSignalsCallback = 14;
        static final int TRANSACTION_updateVisuals = 6;
        static final int TRANSACTION_validateRelationship = 9;
        static final int TRANSACTION_warmup = 2;

        /* JADX INFO: renamed from: rz3$a$a, reason: collision with other inner class name */
        public static class C0327a implements rz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.rz3
            public final Bundle extraCommand(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(5, parcelObtain, parcelObtain2, 0)) {
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

            @Override // defpackage.rz3
            public final boolean isEngagementSignalsApiAvailable(qz3 qz3Var, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(13, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method isEngagementSignalsApiAvailable is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean mayLaunchUrl(qz3 qz3Var, Uri uri, Bundle bundle, List<Bundle> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    b.a(parcelObtain, list);
                    if (!this.a.transact(4, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method mayLaunchUrl is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean newAuthTabSession(oz3 oz3Var, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(oz3Var);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(18, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method newAuthTabSession is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean newSession(qz3 qz3Var) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    if (!this.a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method newSession is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(10, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method newSessionWithExtras is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final int postMessage(qz3 qz3Var, String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(8, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method postMessage is unimplemented.");
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

            @Override // defpackage.rz3
            public final void prefetch(qz3 qz3Var, Uri uri, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(15, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method prefetch is unimplemented.");
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

            @Override // defpackage.rz3
            public final void prefetchWithMultipleUrls(qz3 qz3Var, List<Uri> list, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    b.a(parcelObtain, list);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(16, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method prefetchWithMultipleUrls is unimplemented.");
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

            @Override // defpackage.rz3
            public final boolean receiveFile(qz3 qz3Var, Uri uri, int i, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(12, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method receiveFile is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean requestPostMessageChannel(qz3 qz3Var, Uri uri) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(uri, 0);
                    if (!this.a.transact(7, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method requestPostMessageChannel is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean requestPostMessageChannelWithExtras(qz3 qz3Var, Uri uri, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(11, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method requestPostMessageChannelWithExtras is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean setEngagementSignalsCallback(qz3 qz3Var, IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(14, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method setEngagementSignalsCallback is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean updateVisuals(qz3 qz3Var, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(6, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method updateVisuals is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean validateRelationship(qz3 qz3Var, int i, Uri uri, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeStrongInterface(qz3Var);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeTypedObject(uri, 0);
                    parcelObtain.writeTypedObject(bundle, 0);
                    if (!this.a.transact(9, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method validateRelationship is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // defpackage.rz3
            public final boolean warmup(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(rz3.e);
                    parcelObtain.writeLong(j);
                    if (!this.a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        throw new RemoteException("Method warmup is unimplemented.");
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public a() {
            attachInterface(this, rz3.e);
        }

        public static rz3 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(rz3.e);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof rz3)) {
                return (rz3) iInterfaceQueryLocalInterface;
            }
            C0327a c0327a = new C0327a();
            c0327a.a = iBinder;
            return c0327a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = rz3.e;
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
                    boolean zWarmup = warmup(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zWarmup ? 1 : 0);
                    return true;
                case 3:
                    boolean zNewSession = newSession(qz3.a.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zNewSession ? 1 : 0);
                    return true;
                case 4:
                    qz3 qz3VarAsInterface = qz3.a.asInterface(parcel.readStrongBinder());
                    Uri uri = (Uri) parcel.readTypedObject(Uri.CREATOR);
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean zMayLaunchUrl = mayLaunchUrl(qz3VarAsInterface, uri, (Bundle) parcel.readTypedObject(creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(zMayLaunchUrl ? 1 : 0);
                    return true;
                case 5:
                    Bundle bundleExtraCommand = extraCommand(parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleExtraCommand, 1);
                    return true;
                case 6:
                    boolean zUpdateVisuals = updateVisuals(qz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateVisuals ? 1 : 0);
                    return true;
                case 7:
                    boolean zRequestPostMessageChannel = requestPostMessageChannel(qz3.a.asInterface(parcel.readStrongBinder()), (Uri) parcel.readTypedObject(Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestPostMessageChannel ? 1 : 0);
                    return true;
                case 8:
                    int iPostMessage = postMessage(qz3.a.asInterface(parcel.readStrongBinder()), parcel.readString(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iPostMessage);
                    return true;
                case 9:
                    boolean zValidateRelationship = validateRelationship(qz3.a.asInterface(parcel.readStrongBinder()), parcel.readInt(), (Uri) parcel.readTypedObject(Uri.CREATOR), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zValidateRelationship ? 1 : 0);
                    return true;
                case 10:
                    boolean zNewSessionWithExtras = newSessionWithExtras(qz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zNewSessionWithExtras ? 1 : 0);
                    return true;
                case 11:
                    boolean zRequestPostMessageChannelWithExtras = requestPostMessageChannelWithExtras(qz3.a.asInterface(parcel.readStrongBinder()), (Uri) parcel.readTypedObject(Uri.CREATOR), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestPostMessageChannelWithExtras ? 1 : 0);
                    return true;
                case 12:
                    boolean zReceiveFile = receiveFile(qz3.a.asInterface(parcel.readStrongBinder()), (Uri) parcel.readTypedObject(Uri.CREATOR), parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zReceiveFile ? 1 : 0);
                    return true;
                case 13:
                    boolean zIsEngagementSignalsApiAvailable = isEngagementSignalsApiAvailable(qz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsEngagementSignalsApiAvailable ? 1 : 0);
                    return true;
                case 14:
                    boolean engagementSignalsCallback = setEngagementSignalsCallback(qz3.a.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(engagementSignalsCallback ? 1 : 0);
                    return true;
                case 15:
                    prefetch(qz3.a.asInterface(parcel.readStrongBinder()), (Uri) parcel.readTypedObject(Uri.CREATOR), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    prefetchWithMultipleUrls(qz3.a.asInterface(parcel.readStrongBinder()), parcel.createTypedArrayList(Uri.CREATOR), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 17:
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
                case 18:
                    boolean zNewAuthTabSession = newAuthTabSession(oz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zNewAuthTabSession ? 1 : 0);
                    return true;
            }
        }
    }

    public static class b {
        public static void a(Parcel parcel, List list) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                parcel.writeTypedObject((Parcelable) list.get(i), 0);
            }
        }
    }

    Bundle extraCommand(String str, Bundle bundle);

    int getInterfaceVersion();

    boolean isEngagementSignalsApiAvailable(qz3 qz3Var, Bundle bundle);

    boolean mayLaunchUrl(qz3 qz3Var, Uri uri, Bundle bundle, List<Bundle> list);

    boolean newAuthTabSession(oz3 oz3Var, Bundle bundle);

    boolean newSession(qz3 qz3Var);

    boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle);

    int postMessage(qz3 qz3Var, String str, Bundle bundle);

    void prefetch(qz3 qz3Var, Uri uri, Bundle bundle);

    void prefetchWithMultipleUrls(qz3 qz3Var, List<Uri> list, Bundle bundle);

    boolean receiveFile(qz3 qz3Var, Uri uri, int i, Bundle bundle);

    boolean requestPostMessageChannel(qz3 qz3Var, Uri uri);

    boolean requestPostMessageChannelWithExtras(qz3 qz3Var, Uri uri, Bundle bundle);

    boolean setEngagementSignalsCallback(qz3 qz3Var, IBinder iBinder, Bundle bundle);

    boolean updateVisuals(qz3 qz3Var, Bundle bundle);

    boolean validateRelationship(qz3 qz3Var, int i, Uri uri, Bundle bundle);

    boolean warmup(long j);
}
