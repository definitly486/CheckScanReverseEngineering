package com.google.android.gms.internal.mlkit_vision_barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyb> CREATOR = new zzyc();
    public final int b;
    public final String c;
    public final String d;
    public final byte[] e;
    public final Point[] f;
    public final int g;
    public final zzxu h;
    public final zzxx i;
    public final zzxy j;
    public final zzya k;
    public final zzxz l;
    public final zzxv m;
    public final zzxr n;
    public final zzxs o;
    public final zzxt p;

    public zzyb(int i, String str, String str2, byte[] bArr, Point[] pointArr, int i2, zzxu zzxuVar, zzxx zzxxVar, zzxy zzxyVar, zzya zzyaVar, zzxz zzxzVar, zzxv zzxvVar, zzxr zzxrVar, zzxs zzxsVar, zzxt zzxtVar) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = bArr;
        this.f = pointArr;
        this.g = i2;
        this.h = zzxuVar;
        this.i = zzxxVar;
        this.j = zzxyVar;
        this.k = zzyaVar;
        this.l = zzxzVar;
        this.m = zzxvVar;
        this.n = zzxrVar;
        this.o = zzxsVar;
        this.p = zzxtVar;
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

    public final int zza() {
        return this.b;
    }

    public final int zzb() {
        return this.g;
    }

    public final zzxr zzc() {
        return this.n;
    }

    public final zzxs zzd() {
        return this.o;
    }

    public final zzxt zze() {
        return this.p;
    }

    public final zzxu zzf() {
        return this.h;
    }

    public final zzxv zzg() {
        return this.m;
    }

    public final zzxx zzh() {
        return this.i;
    }

    public final zzxy zzi() {
        return this.j;
    }

    public final zzxz zzj() {
        return this.l;
    }

    public final zzya zzk() {
        return this.k;
    }

    public final String zzl() {
        return this.c;
    }

    public final String zzm() {
        return this.d;
    }

    public final byte[] zzn() {
        return this.e;
    }

    public final Point[] zzo() {
        return this.f;
    }
}
