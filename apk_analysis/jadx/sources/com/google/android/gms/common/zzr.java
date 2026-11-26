package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.nh5;

/* JADX INFO: loaded from: classes4.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    public final boolean b;
    public final String c;
    public final int d;
    public final int e;
    public final long f;

    public zzr(int i, String str, long j, int i2, boolean z) {
        this.b = z;
        this.c = str;
        this.d = nh5.b(i) - 1;
        int i3 = 1;
        int[] iArr = {1, 2, 3};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr[i4];
            int i6 = i5 - 1;
            if (i5 == 0) {
                throw null;
            }
            if (i6 == i2) {
                i3 = i5;
                break;
            }
        }
        this.e = i3 - 1;
        this.f = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.b);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.writeInt(parcel, 4, this.e);
        SafeParcelWriter.writeLong(parcel, 5, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final boolean zza() {
        return this.b;
    }

    public final String zzb() {
        return this.c;
    }

    public final long zzc() {
        return this.f;
    }

    public final int zzd() {
        return nh5.b(this.d);
    }

    public final int zze() {
        int[] iArr = {1, 2, 3};
        for (int i = 0; i < 3; i++) {
            int i2 = iArr[i];
            int i3 = i2 - 1;
            if (i2 == 0) {
                throw null;
            }
            if (i3 == this.e) {
                return i2;
            }
        }
        return 1;
    }
}
