package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzap> CREATOR = new zzbi();
    public final zzat b;
    public final String c;
    public final String d;
    public final zzau[] e;
    public final zzar[] f;
    public final String[] g;
    public final zzam[] h;

    public zzap(zzat zzatVar, String str, String str2, zzau[] zzauVarArr, zzar[] zzarVarArr, String[] strArr, zzam[] zzamVarArr) {
        this.b = zzatVar;
        this.c = str;
        this.d = str2;
        this.e = zzauVarArr;
        this.f = zzarVarArr;
        this.g = strArr;
        this.h = zzamVarArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeTypedArray(parcel, 4, this.e, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
        SafeParcelWriter.writeStringArray(parcel, 6, this.g, false);
        SafeParcelWriter.writeTypedArray(parcel, 7, this.h, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
