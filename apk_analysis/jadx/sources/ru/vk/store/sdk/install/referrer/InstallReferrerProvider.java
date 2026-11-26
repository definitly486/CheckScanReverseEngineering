package ru.vk.store.sdk.install.referrer;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.nh8;

/* JADX INFO: loaded from: classes2.dex */
public interface InstallReferrerProvider extends IInterface {

    public static abstract class a extends Binder implements InstallReferrerProvider {
        public static final /* synthetic */ int a = 0;

        /* JADX INFO: renamed from: ru.vk.store.sdk.install.referrer.InstallReferrerProvider$a$a, reason: collision with other inner class name */
        public static class C0326a implements InstallReferrerProvider {
            public IBinder a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }

            @Override // ru.vk.store.sdk.install.referrer.InstallReferrerProvider
            public final void d(String str, nh8.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(aVar);
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    void d(String str, nh8.a aVar);
}
