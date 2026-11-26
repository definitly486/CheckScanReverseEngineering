package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxs> CREATOR = new zzyh();
    public final zzxw b;
    public final String c;
    public final String d;
    public final zzxx[] e;
    public final zzxu[] f;
    public final String[] g;
    public final zzxp[] h;

    public zzxs(zzxw zzxwVar, String str, String str2, zzxx[] zzxxVarArr, zzxu[] zzxuVarArr, String[] strArr, zzxp[] zzxpVarArr) {
        this.b = zzxwVar;
        this.c = str;
        this.d = str2;
        this.e = zzxxVarArr;
        this.f = zzxuVarArr;
        this.g = strArr;
        this.h = zzxpVarArr;
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

    public final zzxw zza() {
        return this.b;
    }

    public final String zzb() {
        return this.c;
    }

    public final String zzc() {
        return this.d;
    }

    public final zzxp[] zzd() {
        return this.h;
    }

    public final zzxu[] zze() {
        return this.f;
    }

    public final zzxx[] zzf() {
        return this.e;
    }

    public final String[] zzg() {
        return this.g;
    }
}
