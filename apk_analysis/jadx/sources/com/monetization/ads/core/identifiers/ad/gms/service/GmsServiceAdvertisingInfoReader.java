package com.monetization.ads.core.identifiers.ad.gms.service;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class GmsServiceAdvertisingInfoReader implements IInterface {
    private final IBinder a;

    public GmsServiceAdvertisingInfoReader(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.a;
    }

    public Boolean readAdTrackingLimited() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            boolean z = true;
            parcelObtain.writeInt(1);
            this.a.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            if (parcelObtain2.readInt() == 0) {
                z = false;
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return boolValueOf;
        } catch (Throwable unused) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return null;
        }
    }

    public String readAdvertisingId() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            String string = parcelObtain2.readString();
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return string;
        } catch (Throwable unused) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return null;
        }
    }
}
