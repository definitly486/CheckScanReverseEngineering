package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzen;
import defpackage.ad2;
import defpackage.dq;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class CurrentLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CurrentLocationRequest> CREATOR = new zzj();
    public final long b;
    public final int c;
    public final int d;
    public final long e;
    public final boolean f;
    public final int g;
    public final WorkSource h;
    public final com.google.android.gms.internal.location.zzd i;

    public CurrentLocationRequest(long j, int i, int i2, long j2, boolean z, int i3, WorkSource workSource, com.google.android.gms.internal.location.zzd zzdVar) {
        this.b = j;
        this.c = i;
        this.d = i2;
        this.e = j2;
        this.f = z;
        this.g = i3;
        this.h = workSource;
        this.i = zzdVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CurrentLocationRequest)) {
            return false;
        }
        CurrentLocationRequest currentLocationRequest = (CurrentLocationRequest) obj;
        return this.b == currentLocationRequest.b && this.c == currentLocationRequest.c && this.d == currentLocationRequest.d && this.e == currentLocationRequest.e && this.f == currentLocationRequest.f && this.g == currentLocationRequest.g && Objects.equal(this.h, currentLocationRequest.h) && Objects.equal(this.i, currentLocationRequest.i);
    }

    @Pure
    public long getDurationMillis() {
        return this.e;
    }

    @Pure
    public int getGranularity() {
        return this.c;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        return this.b;
    }

    @Pure
    public int getPriority() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), Long.valueOf(this.e));
    }

    public String toString() {
        StringBuilder sbC = ad2.c("CurrentLocationRequest[");
        sbC.append(zzak.zzb(this.d));
        long j = this.b;
        if (j != Long.MAX_VALUE) {
            sbC.append(", maxAge=");
            zzen.zzc(j, sbC);
        }
        long j2 = this.e;
        if (j2 != Long.MAX_VALUE) {
            dq.d(sbC, ", duration=", j2, "ms");
        }
        int i = this.c;
        if (i != 0) {
            sbC.append(", ");
            sbC.append(zzp.zzb(i));
        }
        if (this.f) {
            sbC.append(", bypass");
        }
        int i2 = this.g;
        if (i2 != 0) {
            sbC.append(", ");
            sbC.append(zzao.zzb(i2));
        }
        WorkSource workSource = this.h;
        if (!WorkSourceUtil.isEmpty(workSource)) {
            sbC.append(", workSource=");
            sbC.append(workSource);
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.i;
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
        SafeParcelWriter.writeInt(parcel, 3, getPriority());
        SafeParcelWriter.writeLong(parcel, 4, getDurationMillis());
        SafeParcelWriter.writeBoolean(parcel, 5, this.f);
        SafeParcelWriter.writeParcelable(parcel, 6, this.h, i, false);
        SafeParcelWriter.writeInt(parcel, 7, this.g);
        SafeParcelWriter.writeParcelable(parcel, 9, this.i, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return this.f;
    }

    @Pure
    public final int zzb() {
        return this.g;
    }

    @Pure
    public final WorkSource zzc() {
        return this.h;
    }

    @Pure
    public final com.google.android.gms.internal.location.zzd zzd() {
        return this.i;
    }

    public static final class Builder {
        public long a;
        public int b;
        public int c;
        public long d;
        public final boolean e;
        public final int f;
        public final WorkSource g;
        public final com.google.android.gms.internal.location.zzd h;

        public Builder(CurrentLocationRequest currentLocationRequest) {
            this.a = currentLocationRequest.getMaxUpdateAgeMillis();
            this.b = currentLocationRequest.getGranularity();
            this.c = currentLocationRequest.getPriority();
            this.d = currentLocationRequest.getDurationMillis();
            this.e = currentLocationRequest.zza();
            this.f = currentLocationRequest.zzb();
            this.g = new WorkSource(currentLocationRequest.zzc());
            this.h = currentLocationRequest.zzd();
        }

        public CurrentLocationRequest build() {
            long j = this.a;
            int i = this.b;
            int i2 = this.c;
            long j2 = this.d;
            WorkSource workSource = new WorkSource(this.g);
            return new CurrentLocationRequest(j, i, i2, j2, this.e, this.f, workSource, this.h);
        }

        public Builder setDurationMillis(long j) {
            Preconditions.checkArgument(j > 0, "durationMillis must be greater than 0");
            this.d = j;
            return this;
        }

        public Builder setGranularity(int i) {
            zzp.zza(i);
            this.b = i;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long j) {
            Preconditions.checkArgument(j >= 0, "maxUpdateAgeMillis must be greater than or equal to 0");
            this.a = j;
            return this;
        }

        public Builder setPriority(int i) {
            zzak.zza(i);
            this.c = i;
            return this;
        }

        public Builder() {
            this.a = 10000L;
            this.b = 0;
            this.c = 102;
            this.d = Long.MAX_VALUE;
            this.e = false;
            this.f = 0;
            this.g = null;
            this.h = null;
        }
    }
}
