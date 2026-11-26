package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbr> CREATOR = new zzbs();
    public final boolean b;
    public final byte[] c;
    public final boolean d;
    public final float e;
    public final boolean f;

    public zzbr(boolean z, byte[] bArr, boolean z2, float f, boolean z3) {
        this.b = z;
        this.c = bArr;
        this.d = z2;
        this.e = f;
        this.f = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.b);
        SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.writeFloat(parcel, 4, this.e);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
