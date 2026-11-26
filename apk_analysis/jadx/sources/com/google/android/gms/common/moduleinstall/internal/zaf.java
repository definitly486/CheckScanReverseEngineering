package com.google.android.gms.common.moduleinstall.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa implements IInterface {
    public final void zae(zae zaeVar, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, zaeVar);
        com.google.android.gms.internal.base.zac.zab(parcelF, apiFeatureRequest);
        g(parcelF, 1);
    }

    public final void zaf(zae zaeVar, ApiFeatureRequest apiFeatureRequest, zah zahVar) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, zaeVar);
        com.google.android.gms.internal.base.zac.zab(parcelF, apiFeatureRequest);
        com.google.android.gms.internal.base.zac.zac(parcelF, zahVar);
        g(parcelF, 2);
    }

    public final void zag(zae zaeVar, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, zaeVar);
        com.google.android.gms.internal.base.zac.zab(parcelF, apiFeatureRequest);
        g(parcelF, 3);
    }

    public final void zah(IStatusCallback iStatusCallback, ApiFeatureRequest apiFeatureRequest) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, iStatusCallback);
        com.google.android.gms.internal.base.zac.zab(parcelF, apiFeatureRequest);
        g(parcelF, 4);
    }

    public final void zai(IStatusCallback iStatusCallback, zah zahVar) {
        Parcel parcelF = f();
        com.google.android.gms.internal.base.zac.zac(parcelF, iStatusCallback);
        com.google.android.gms.internal.base.zac.zac(parcelF, zahVar);
        g(parcelF, 6);
    }
}
