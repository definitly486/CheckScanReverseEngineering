package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbt> CREATOR = new zzbu();
    public final float[] b;
    public final int c;
    public final boolean d;

    public zzbt(float[] fArr, int i, boolean z) {
        this.b = fArr;
        this.c = i;
        this.d = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloatArray(parcel, 1, this.b, false);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.c;
    }

    public final boolean zzb() {
        return this.d;
    }

    public final float[] zzc() {
        return this.b;
    }
}
