package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxv> CREATOR = new zzyk();
    public final double b;
    public final double c;

    public zzxv(double d, double d2) {
        this.b = d;
        this.c = d2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 1, this.b);
        SafeParcelWriter.writeDouble(parcel, 2, this.c);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final double zza() {
        return this.b;
    }

    public final double zzb() {
        return this.c;
    }
}
