package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class FidoCredentialDetails extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FidoCredentialDetails> CREATOR = new zzy();
    public final String b;
    public final String c;
    public final byte[] d;
    public final byte[] e;
    public final boolean f;
    public final boolean g;

    public FidoCredentialDetails(String str, String str2, byte[] bArr, byte[] bArr2, boolean z, boolean z2) {
        this.b = str;
        this.c = str2;
        this.d = bArr;
        this.e = bArr2;
        this.f = z;
        this.g = z2;
    }

    public static FidoCredentialDetails deserializeFromBytes(byte[] bArr) {
        return (FidoCredentialDetails) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FidoCredentialDetails)) {
            return false;
        }
        FidoCredentialDetails fidoCredentialDetails = (FidoCredentialDetails) obj;
        return Objects.equal(this.b, fidoCredentialDetails.b) && Objects.equal(this.c, fidoCredentialDetails.c) && Arrays.equals(this.d, fidoCredentialDetails.d) && Arrays.equals(this.e, fidoCredentialDetails.e) && this.f == fidoCredentialDetails.f && this.g == fidoCredentialDetails.g;
    }

    public byte[] getCredentialId() {
        return this.e;
    }

    public boolean getIsDiscoverable() {
        return this.f;
    }

    public boolean getIsPaymentCredential() {
        return this.g;
    }

    public String getUserDisplayName() {
        return this.c;
    }

    public byte[] getUserId() {
        return this.d;
    }

    public String getUserName() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e, Boolean.valueOf(this.f), Boolean.valueOf(this.g));
    }

    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUserName(), false);
        SafeParcelWriter.writeString(parcel, 2, getUserDisplayName(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getUserId(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getCredentialId(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, getIsDiscoverable());
        SafeParcelWriter.writeBoolean(parcel, 6, getIsPaymentCredential());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
