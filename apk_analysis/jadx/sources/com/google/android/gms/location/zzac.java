package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ad2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new zzad();
    public final boolean b;
    public final com.google.android.gms.internal.location.zzd c;

    public zzac(boolean z, com.google.android.gms.internal.location.zzd zzdVar) {
        this.b = z;
        this.c = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        return this.b == zzacVar.b && Objects.equal(this.c, zzacVar.c);
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.b));
    }

    public final String toString() {
        StringBuilder sbC = ad2.c("LocationAvailabilityRequest[");
        if (this.b) {
            sbC.append("bypass, ");
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.c;
        if (zzdVar != null) {
            sbC.append("impersonation=");
            sbC.append(zzdVar);
            sbC.append(", ");
        }
        sbC.setLength(sbC.length() - 2);
        sbC.append(']');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
