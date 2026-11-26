package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import defpackage.cg;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorErrorResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorErrorResponse> CREATOR = new zzl();
    public final ErrorCode b;
    public final String c;
    public final int d;

    public AuthenticatorErrorResponse(int i, String str, int i2) {
        try {
            this.b = ErrorCode.toErrorCode(i);
            this.c = str;
            this.d = i2;
        } catch (ErrorCode.UnsupportedErrorCodeException e) {
            cg.h(e);
            throw null;
        }
    }

    public static AuthenticatorErrorResponse deserializeFromBytes(byte[] bArr) {
        return (AuthenticatorErrorResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorErrorResponse)) {
            return false;
        }
        AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
        return Objects.equal(this.b, authenticatorErrorResponse.b) && Objects.equal(this.c, authenticatorErrorResponse.c) && Objects.equal(Integer.valueOf(this.d), Integer.valueOf(authenticatorErrorResponse.d));
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    public byte[] getClientDataJSON() {
        throw new UnsupportedOperationException();
    }

    public ErrorCode getErrorCode() {
        return this.b;
    }

    public int getErrorCodeAsInt() {
        return this.b.getCode();
    }

    public String getErrorMessage() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, Integer.valueOf(this.d));
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    public String toString() {
        com.google.android.gms.internal.fido.zzaj zzajVarZza = com.google.android.gms.internal.fido.zzak.zza(this);
        zzajVarZza.zza("errorCode", this.b.getCode());
        String str = this.c;
        if (str != null) {
            zzajVarZza.zzb("errorMessage", str);
        }
        return zzajVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getErrorCodeAsInt());
        SafeParcelWriter.writeString(parcel, 3, getErrorMessage(), false);
        SafeParcelWriter.writeInt(parcel, 4, this.d);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
