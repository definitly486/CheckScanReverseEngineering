package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.IAccountAccessor;

/* JADX INFO: loaded from: classes4.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa implements IInterface {
    public final void zae(int i) {
        Parcel parcelF = f();
        parcelF.writeInt(i);
        g(parcelF, 7);
    }

    public final void zaf(IAccountAccessor iAccountAccessor, int i, boolean z) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, iAccountAccessor);
        parcelF.writeInt(i);
        parcelF.writeInt(z ? 1 : 0);
        g(parcelF, 9);
    }

    public final void zag(zai zaiVar, zae zaeVar) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zab(parcelF, zaiVar);
        com.google.android.gms.internal.base.zac.zac(parcelF, zaeVar);
        g(parcelF, 12);
    }
}
