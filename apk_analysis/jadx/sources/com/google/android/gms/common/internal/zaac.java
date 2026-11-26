package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zaac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaac> CREATOR = new zaad();
    public final int b;
    public final int c;
    public final int d;

    @Deprecated
    public final Scope[] e;

    public zaac(int i, int i2, int i3, Scope[] scopeArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.writeTypedArray(parcel, 4, this.e, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
