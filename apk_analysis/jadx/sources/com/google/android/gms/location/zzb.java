package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    public final long b;
    public final boolean c;
    public final WorkSource d;
    public final String e;
    public final int[] f;
    public final boolean g;
    public final String h;
    public final long i;
    public String j;

    public zzb(long j, boolean z, WorkSource workSource, String str, int[] iArr, boolean z2, String str2, long j2, String str3) {
        this.b = j;
        this.c = z;
        this.d = workSource;
        this.e = str;
        this.f = iArr;
        this.g = z2;
        this.h = str2;
        this.i = j2;
        this.j = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.b);
        SafeParcelWriter.writeBoolean(parcel, 2, this.c);
        SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.e, false);
        SafeParcelWriter.writeIntArray(parcel, 5, this.f, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.g);
        SafeParcelWriter.writeString(parcel, 7, this.h, false);
        SafeParcelWriter.writeLong(parcel, 8, this.i);
        SafeParcelWriter.writeString(parcel, 9, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzb zza(String str) {
        this.j = str;
        return this;
    }
}
