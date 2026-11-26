package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzay extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzay> CREATOR = new zzaz();
    public final int b;
    public final String c;
    public final String d;
    public final byte[] e;
    public final Point[] f;
    public final int g;
    public final zzar h;
    public final zzau i;
    public final zzav j;
    public final zzax k;
    public final zzaw l;
    public final zzas m;
    public final zzao n;
    public final zzap o;
    public final zzaq p;

    public zzay(int i, String str, String str2, byte[] bArr, Point[] pointArr, int i2, zzar zzarVar, zzau zzauVar, zzav zzavVar, zzax zzaxVar, zzaw zzawVar, zzas zzasVar, zzao zzaoVar, zzap zzapVar, zzaq zzaqVar) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = bArr;
        this.f = pointArr;
        this.g = i2;
        this.h = zzarVar;
        this.i = zzauVar;
        this.j = zzavVar;
        this.k = zzaxVar;
        this.l = zzawVar;
        this.m = zzasVar;
        this.n = zzaoVar;
        this.o = zzapVar;
        this.p = zzaqVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.e, false);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.g);
        SafeParcelWriter.writeParcelable(parcel, 7, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.k, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.l, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.m, i, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.n, i, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.o, i, false);
        SafeParcelWriter.writeParcelable(parcel, 15, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
