package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxr> CREATOR = new zzyg();
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final zzxq g;
    public final zzxq h;

    public zzxr(String str, String str2, String str3, String str4, String str5, zzxq zzxqVar, zzxq zzxqVar2) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = zzxqVar;
        this.h = zzxqVar2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.b, false);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeString(parcel, 4, this.e, false);
        SafeParcelWriter.writeString(parcel, 5, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.h, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzxq zza() {
        return this.h;
    }

    public final zzxq zzb() {
        return this.g;
    }

    public final String zzc() {
        return this.c;
    }

    public final String zzd() {
        return this.d;
    }

    public final String zze() {
        return this.e;
    }

    public final String zzf() {
        return this.f;
    }

    public final String zzg() {
        return this.b;
    }
}
