package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0969hb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0995ib(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new C0995ib[i];
    }
}
