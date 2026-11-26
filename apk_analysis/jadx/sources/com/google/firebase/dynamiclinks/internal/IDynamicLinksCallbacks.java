package com.google.firebase.dynamiclinks.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public interface IDynamicLinksCallbacks extends IInterface {
    public static final String DESCRIPTOR = "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks";

    public static class Default implements IDynamicLinksCallbacks {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
        public void onCreateShortDynamicLink(Status status, ShortDynamicLinkImpl shortDynamicLinkImpl) {
        }

        @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
        public void onGetDynamicLink(Status status, DynamicLinkData dynamicLinkData) {
        }
    }

    public static abstract class Stub extends Binder implements IDynamicLinksCallbacks {
        static final int TRANSACTION_onCreateShortDynamicLink = 2;
        static final int TRANSACTION_onGetDynamicLink = 1;

        public static class Proxy implements IDynamicLinksCallbacks {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IDynamicLinksCallbacks.DESCRIPTOR;
            }

            @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
            public void onCreateShortDynamicLink(Status status, ShortDynamicLinkImpl shortDynamicLinkImpl) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDynamicLinksCallbacks.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, status, 0);
                    _Parcel.writeTypedObject(parcelObtain, shortDynamicLinkImpl, 0);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks
            public void onGetDynamicLink(Status status, DynamicLinkData dynamicLinkData) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDynamicLinksCallbacks.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, status, 0);
                    _Parcel.writeTypedObject(parcelObtain, dynamicLinkData, 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IDynamicLinksCallbacks.DESCRIPTOR);
        }

        public static IDynamicLinksCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDynamicLinksCallbacks.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDynamicLinksCallbacks)) ? new Proxy(iBinder) : (IDynamicLinksCallbacks) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IDynamicLinksCallbacks.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IDynamicLinksCallbacks.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onGetDynamicLink((Status) _Parcel.readTypedObject(parcel, Status.CREATOR), (DynamicLinkData) _Parcel.readTypedObject(parcel, DynamicLinkData.CREATOR));
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onCreateShortDynamicLink((Status) _Parcel.readTypedObject(parcel, Status.CREATOR), (ShortDynamicLinkImpl) _Parcel.readTypedObject(parcel, ShortDynamicLinkImpl.CREATOR));
            }
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            }
        }
    }

    void onCreateShortDynamicLink(Status status, ShortDynamicLinkImpl shortDynamicLinkImpl);

    void onGetDynamicLink(Status status, DynamicLinkData dynamicLinkData);
}
