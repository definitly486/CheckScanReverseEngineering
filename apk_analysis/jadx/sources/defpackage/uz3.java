package defpackage;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface uz3 extends IInterface {
    public static final String g = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

    public static abstract class a extends Binder implements uz3 {
        public static final /* synthetic */ int a = 0;

        /* JADX INFO: renamed from: uz3$a$a, reason: collision with other inner class name */
        public static class C0342a implements uz3 {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // defpackage.uz3
            public final void e(String str, int i, String str2, Notification notification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(uz3.g);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeTypedObject(notification, 0);
                    this.a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }

    void e(String str, int i, String str2, Notification notification);
}
