package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyu> CREATOR = new zzyv();
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final long f;

    public zzyu(int i, int i2, int i3, int i4, long j) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.writeInt(parcel, 4, this.e);
        SafeParcelWriter.writeLong(parcel, 5, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
