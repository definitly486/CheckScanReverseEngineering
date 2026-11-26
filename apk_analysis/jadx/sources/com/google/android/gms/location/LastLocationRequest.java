package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzen;
import defpackage.ad2;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class LastLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LastLocationRequest> CREATOR = new zzz();
    public final long b;
    public final int c;
    public final boolean d;
    public final com.google.android.gms.internal.location.zzd e;

    public LastLocationRequest(long j, int i, boolean z, com.google.android.gms.internal.location.zzd zzdVar) {
        this.b = j;
        this.c = i;
        this.d = z;
        this.e = zzdVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LastLocationRequest)) {
            return false;
        }
        LastLocationRequest lastLocationRequest = (LastLocationRequest) obj;
        return this.b == lastLocationRequest.b && this.c == lastLocationRequest.c && this.d == lastLocationRequest.d && Objects.equal(this.e, lastLocationRequest.e);
    }

    @Pure
    public int getGranularity() {
        return this.c;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.b), Integer.valueOf(this.c), Boolean.valueOf(this.d));
    }

    public String toString() {
        StringBuilder sbC = ad2.c("LastLocationRequest[");
        long j = this.b;
        if (j != Long.MAX_VALUE) {
            sbC.append("maxAge=");
            zzen.zzc(j, sbC);
        }
        int i = this.c;
        if (i != 0) {
            sbC.append(", ");
            sbC.append(zzp.zzb(i));
        }
        if (this.d) {
            sbC.append(", bypass");
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.e;
        if (zzdVar != null) {
            sbC.append(", impersonation=");
            sbC.append(zzdVar);
        }
        sbC.append(']');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 2, getGranularity());
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.writeParcelable(parcel, 5, this.e, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return this.d;
    }

    @Pure
    public final com.google.android.gms.internal.location.zzd zzb() {
        return this.e;
    }

    public static final class Builder {
        public long a;
        public int b;
        public final boolean c;
        public final com.google.android.gms.internal.location.zzd d;

        public Builder(LastLocationRequest lastLocationRequest) {
            this.a = lastLocationRequest.getMaxUpdateAgeMillis();
            this.b = lastLocationRequest.getGranularity();
            this.c = lastLocationRequest.zza();
            this.d = lastLocationRequest.zzb();
        }

        public LastLocationRequest build() {
            return new LastLocationRequest(this.a, this.b, this.c, this.d);
        }

        public Builder setGranularity(int i) {
            zzp.zza(i);
            this.b = i;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long j) {
            Preconditions.checkArgument(j > 0, "maxUpdateAgeMillis must be greater than 0");
            this.a = j;
            return this;
        }

        public Builder() {
            this.a = Long.MAX_VALUE;
            this.b = 0;
            this.c = false;
            this.d = null;
        }
    }
}
