package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();
    public final long b;
    public final byte[] c;
    public final byte[] d;
    public final byte[] e;

    public zzq(long j, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.b = j;
        this.c = (byte[]) Preconditions.checkNotNull(bArr);
        this.d = (byte[]) Preconditions.checkNotNull(bArr2);
        this.e = (byte[]) Preconditions.checkNotNull(bArr3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzq)) {
            return false;
        }
        zzq zzqVar = (zzq) obj;
        return this.b == zzqVar.b && Arrays.equals(this.c, zzqVar.c) && Arrays.equals(this.d, zzqVar.d) && Arrays.equals(this.e, zzqVar.e);
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.b), this.c, this.d, this.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.b);
        SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.d, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.e, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
