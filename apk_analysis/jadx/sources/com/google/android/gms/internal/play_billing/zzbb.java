package com.google.android.gms.internal.play_billing;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbb extends zzav implements zzbc {
    public zzbb() {
        super("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback");
    }

    @Override // com.google.android.gms.internal.play_billing.zzav
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        int i3 = parcel.readInt();
        enforceNoDataAvail(parcel);
        zza(i3);
        return true;
    }
}
