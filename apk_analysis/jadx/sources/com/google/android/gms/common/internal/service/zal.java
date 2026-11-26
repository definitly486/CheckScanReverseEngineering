package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import com.google.android.gms.internal.base.zac;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zal extends com.google.android.gms.internal.base.zab implements zam {
    public zal() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zab
    public final boolean f(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        int i2 = parcel.readInt();
        zac.zad(parcel);
        zab(i2);
        return true;
    }
}
