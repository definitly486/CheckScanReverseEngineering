package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public interface tz3 extends IInterface {

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class a extends go9 implements tz3 {
        public static final /* synthetic */ int a = 0;

        /* JADX INFO: renamed from: tz3$a$a, reason: collision with other inner class name */
        public static class C0337a extends jn9 implements tz3 {
            @Override // defpackage.tz3
            public final Bundle a(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                int i = eq9.a;
                parcelObtain.writeInt(1);
                bundle.writeToParcel(parcelObtain, 0);
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        this.a.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        parcelObtain.recycle();
                        Bundle bundle2 = (Bundle) (parcelObtain2.readInt() == 0 ? null : (Parcelable) Bundle.CREATOR.createFromParcel(parcelObtain2));
                        parcelObtain2.recycle();
                        return bundle2;
                    } catch (RuntimeException e) {
                        parcelObtain2.recycle();
                        throw e;
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }

    Bundle a(Bundle bundle);
}
