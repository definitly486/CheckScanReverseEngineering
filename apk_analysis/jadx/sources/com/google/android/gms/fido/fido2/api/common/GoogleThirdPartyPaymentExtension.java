package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class GoogleThirdPartyPaymentExtension extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleThirdPartyPaymentExtension> CREATOR = new zzaf();
    public final boolean b;

    public GoogleThirdPartyPaymentExtension(boolean z) {
        this.b = z;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GoogleThirdPartyPaymentExtension) && this.b == ((GoogleThirdPartyPaymentExtension) obj).getThirdPartyPayment();
    }

    public boolean getThirdPartyPayment() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.b));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getThirdPartyPayment());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
