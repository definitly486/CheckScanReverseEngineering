package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import defpackage.ah;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredential> CREATOR = new zzal();
    public final String b;
    public final String c;
    public final byte[] d;
    public final AuthenticatorAttestationResponse e;
    public final AuthenticatorAssertionResponse f;
    public final AuthenticatorErrorResponse g;
    public final AuthenticationExtensionsClientOutputs h;
    public final String i;

    public static class Builder {
        public String a;
        public byte[] b;
        public AuthenticatorResponse c;
        public AuthenticationExtensionsClientOutputs d;
        public String e;

        public PublicKeyCredential build() {
            AuthenticatorResponse authenticatorResponse = this.c;
            return new PublicKeyCredential(this.a, PublicKeyCredentialType.PUBLIC_KEY.toString(), this.b, authenticatorResponse instanceof AuthenticatorAttestationResponse ? (AuthenticatorAttestationResponse) authenticatorResponse : null, authenticatorResponse instanceof AuthenticatorAssertionResponse ? (AuthenticatorAssertionResponse) authenticatorResponse : null, authenticatorResponse instanceof AuthenticatorErrorResponse ? (AuthenticatorErrorResponse) authenticatorResponse : null, this.d, this.e);
        }

        public Builder setAuthenticationExtensionsClientOutputs(AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs) {
            this.d = authenticationExtensionsClientOutputs;
            return this;
        }

        public Builder setAuthenticatorAttachment(String str) {
            this.e = str;
            return this;
        }

        public Builder setId(String str) {
            this.a = str;
            return this;
        }

        public Builder setRawId(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        public Builder setResponse(AuthenticatorResponse authenticatorResponse) {
            this.c = authenticatorResponse;
            return this;
        }
    }

    public PublicKeyCredential(String str, String str2, byte[] bArr, AuthenticatorAttestationResponse authenticatorAttestationResponse, AuthenticatorAssertionResponse authenticatorAssertionResponse, AuthenticatorErrorResponse authenticatorErrorResponse, AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs, String str3) {
        boolean z = true;
        if ((authenticatorAttestationResponse == null || authenticatorAssertionResponse != null || authenticatorErrorResponse != null) && ((authenticatorAttestationResponse != null || authenticatorAssertionResponse == null || authenticatorErrorResponse != null) && (authenticatorAttestationResponse != null || authenticatorAssertionResponse != null || authenticatorErrorResponse == null))) {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.b = str;
        this.c = str2;
        this.d = bArr;
        this.e = authenticatorAttestationResponse;
        this.f = authenticatorAssertionResponse;
        this.g = authenticatorErrorResponse;
        this.h = authenticationExtensionsClientOutputs;
        this.i = str3;
    }

    public static PublicKeyCredential deserializeFromBytes(byte[] bArr) {
        return (PublicKeyCredential) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredential)) {
            return false;
        }
        PublicKeyCredential publicKeyCredential = (PublicKeyCredential) obj;
        return Objects.equal(this.b, publicKeyCredential.b) && Objects.equal(this.c, publicKeyCredential.c) && Arrays.equals(this.d, publicKeyCredential.d) && Objects.equal(this.e, publicKeyCredential.e) && Objects.equal(this.f, publicKeyCredential.f) && Objects.equal(this.g, publicKeyCredential.g) && Objects.equal(this.h, publicKeyCredential.h) && Objects.equal(this.i, publicKeyCredential.i);
    }

    public String getAuthenticatorAttachment() {
        return this.i;
    }

    public AuthenticationExtensionsClientOutputs getClientExtensionResults() {
        return this.h;
    }

    public String getId() {
        return this.b;
    }

    public byte[] getRawId() {
        return this.d;
    }

    public AuthenticatorResponse getResponse() {
        AuthenticatorAttestationResponse authenticatorAttestationResponse = this.e;
        if (authenticatorAttestationResponse != null) {
            return authenticatorAttestationResponse;
        }
        AuthenticatorAssertionResponse authenticatorAssertionResponse = this.f;
        if (authenticatorAssertionResponse != null) {
            return authenticatorAssertionResponse;
        }
        AuthenticatorErrorResponse authenticatorErrorResponse = this.g;
        if (authenticatorErrorResponse != null) {
            return authenticatorErrorResponse;
        }
        ah.f("No response set.");
        return null;
    }

    public String getType() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.f, this.e, this.g, this.h, this.i);
    }

    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getId(), false);
        SafeParcelWriter.writeString(parcel, 2, getType(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getRawId(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, getClientExtensionResults(), i, false);
        SafeParcelWriter.writeString(parcel, 8, getAuthenticatorAttachment(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
