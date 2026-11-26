package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzl();
    public final RootTelemetryConfiguration b;
    public final boolean c;
    public final boolean d;
    public final int[] e;
    public final int f;
    public final int[] g;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.b = rootTelemetryConfiguration;
        this.c = z;
        this.d = z2;
        this.e = iArr;
        this.f = i;
        this.g = iArr2;
    }

    public int getMaxMethodInvocationsLogged() {
        return this.f;
    }

    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.e;
    }

    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.g;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.c;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
        SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
        SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
        SafeParcelWriter.writeIntArray(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
        SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsLogged());
        SafeParcelWriter.writeIntArray(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final RootTelemetryConfiguration zza() {
        return this.b;
    }
}
