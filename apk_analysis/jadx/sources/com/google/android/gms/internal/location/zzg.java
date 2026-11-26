package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.DeviceOrientationRequest;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    public static final DeviceOrientationRequest c = new DeviceOrientationRequest.Builder(20000).build();
    public final DeviceOrientationRequest b;

    public zzg(DeviceOrientationRequest deviceOrientationRequest) {
        this.b = deviceOrientationRequest;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzg) {
            return Objects.equal(this.b, ((zzg) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
