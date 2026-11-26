package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import ru.rustore.sdk.core.exception.RuStoreException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class pp3 extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        z54 z54VarC;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
        }
        if (i == 1598968902) {
            parcel2.writeString("ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback");
            return true;
        }
        if (i != 1) {
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.readInt();
            String string = parcel.readString();
            string.getClass();
            nh8.this.d.invoke(new RuStoreException(string));
            parcel2.writeNoException();
            return true;
        }
        String string2 = parcel.readString();
        nh8 nh8Var = nh8.this;
        if (string2 != null) {
            try {
                z54VarC = eg9.c(string2);
            } catch (Throwable th) {
                uz uzVar = nh8Var.d;
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                uzVar.invoke(new RuStoreException(message));
            }
        } else {
            z54VarC = null;
        }
        nh8Var.c.invoke(z54VarC);
        parcel2.writeNoException();
        return true;
    }
}
