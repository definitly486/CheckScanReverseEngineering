package com.google.android.gms.common.internal.service;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.zac;

/* JADX INFO: loaded from: classes4.dex */
public final class zak extends com.google.android.gms.internal.base.zaa implements IInterface {
    public final void zae(TelemetryData telemetryData) {
        Parcel parcelF = f();
        zac.zab(parcelF, telemetryData);
        h(parcelF);
    }
}
