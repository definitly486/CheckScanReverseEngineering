package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzep;
import defpackage.fg;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceOrientationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceOrientationRequest> CREATOR = new zzm();
    public static final long OUTPUT_PERIOD_DEFAULT = 20000;
    public static final long OUTPUT_PERIOD_FAST = 5000;
    public static final long OUTPUT_PERIOD_MEDIUM = 10000;
    public final long b;
    public final boolean c;

    public DeviceOrientationRequest(long j, boolean z) {
        this.b = j;
        this.c = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceOrientationRequest)) {
            return false;
        }
        DeviceOrientationRequest deviceOrientationRequest = (DeviceOrientationRequest) obj;
        return this.b == deviceOrientationRequest.b && this.c == deviceOrientationRequest.c;
    }

    @Pure
    public long getSamplingPeriodMicros() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.b), Boolean.valueOf(this.c));
    }

    public String toString() {
        long j = this.b;
        int length = String.valueOf(j).length();
        String str = true != this.c ? "" : ", withVelocity";
        StringBuilder sb = new StringBuilder(str.length() + length + 46 + 1);
        sb.append("DeviceOrientationRequest[samplingPeriodMicros=");
        sb.append(j);
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getSamplingPeriodMicros());
        SafeParcelWriter.writeBoolean(parcel, 6, this.c);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public static final class Builder {
        public long a;
        public final boolean b;

        public Builder(DeviceOrientationRequest deviceOrientationRequest) {
            this.a = deviceOrientationRequest.b;
            this.b = deviceOrientationRequest.c;
        }

        public DeviceOrientationRequest build() {
            return new DeviceOrientationRequest(this.a, this.b);
        }

        public Builder setSamplingPeriodMicros(long j) {
            if (j < 0 || j >= Long.MAX_VALUE) {
                fg.c(zzep.zza("Invalid interval: %s should be greater than or equal to 0. Note: Long.MAX_VALUE is not a valid interval.", Long.valueOf(j)));
                return null;
            }
            this.a = j;
            return this;
        }

        public Builder(long j) {
            this.b = false;
            setSamplingPeriodMicros(j);
        }
    }
}
