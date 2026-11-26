package android.support.v4.os;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();
    public android.support.v4.os.a b;

    public class a implements Parcelable.Creator<ResultReceiver> {
        @Override // android.os.Parcelable.Creator
        public final ResultReceiver createFromParcel(Parcel parcel) {
            android.support.v4.os.a aVar;
            ResultReceiver resultReceiver = new ResultReceiver();
            IBinder strongBinder = parcel.readStrongBinder();
            int i = android.support.v4.os.a.AbstractBinderC0003a.a;
            if (strongBinder == null) {
                aVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(android.support.v4.os.a.k);
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof android.support.v4.os.a)) {
                    android.support.v4.os.a.AbstractBinderC0003a.C0004a c0004a = new android.support.v4.os.a.AbstractBinderC0003a.C0004a();
                    c0004a.a = strongBinder;
                    aVar = c0004a;
                } else {
                    aVar = (android.support.v4.os.a) iInterfaceQueryLocalInterface;
                }
            }
            resultReceiver.b = aVar;
            return resultReceiver;
        }

        @Override // android.os.Parcelable.Creator
        public final ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }

    public class b extends android.support.v4.os.a.AbstractBinderC0003a {
        public b() {
            attachInterface(this, android.support.v4.os.a.k);
        }

        @Override // android.support.v4.os.a
        public final void b(int i, Bundle bundle) {
            ResultReceiver.this.a(i, bundle);
        }
    }

    public void a(int i, Bundle bundle) {
    }

    public final void b(int i, Bundle bundle) {
        android.support.v4.os.a aVar = this.b;
        if (aVar != null) {
            try {
                aVar.b(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            try {
                android.support.v4.os.a bVar = this.b;
                if (bVar == null) {
                    bVar = new b();
                    this.b = bVar;
                }
                parcel.writeStrongBinder(bVar.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
