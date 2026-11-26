package com.google.android.gms.fido.fido2.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: loaded from: classes4.dex */
public class BrowserPublicKeyCredentialCreationOptions extends BrowserRequestOptions {
    public static final Parcelable.Creator<BrowserPublicKeyCredentialCreationOptions> CREATOR = new zzn();
    public final PublicKeyCredentialCreationOptions b;
    public final Uri c;
    public final byte[] d;

    public static final class Builder {
        public PublicKeyCredentialCreationOptions a;
        public Uri b;
        public byte[] c;

        public BrowserPublicKeyCredentialCreationOptions build() {
            return new BrowserPublicKeyCredentialCreationOptions(this.a, this.b, this.c);
        }

        public Builder setClientDataHash(byte[] bArr) {
            Parcelable.Creator<BrowserPublicKeyCredentialCreationOptions> creator = BrowserPublicKeyCredentialCreationOptions.CREATOR;
            boolean z = true;
            if (bArr != null && bArr.length != 32) {
                z = false;
            }
            Preconditions.checkArgument(z, "clientDataHash must be 32 bytes long");
            this.c = bArr;
            return this;
        }

        public Builder setOrigin(Uri uri) {
            Parcelable.Creator<BrowserPublicKeyCredentialCreationOptions> creator = BrowserPublicKeyCredentialCreationOptions.CREATOR;
            Preconditions.checkNotNull(uri);
            Preconditions.checkArgument(uri.getScheme() != null, "origin scheme must be non-empty");
            Preconditions.checkArgument(uri.getAuthority() != null, "origin authority must be non-empty");
            this.b = uri;
            return this;
        }

        public Builder setPublicKeyCredentialCreationOptions(PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
            this.a = publicKeyCredentialCreationOptions;
            return this;
        }
    }

    public BrowserPublicKeyCredentialCreationOptions(PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions, Uri uri, byte[] bArr) {
        this.b = (PublicKeyCredentialCreationOptions) Preconditions.checkNotNull(publicKeyCredentialCreationOptions);
        Preconditions.checkNotNull(uri);
        Preconditions.checkArgument(uri.getScheme() != null, "origin scheme must be non-empty");
        Preconditions.checkArgument(uri.getAuthority() != null, "origin authority must be non-empty");
        this.c = uri;
        Preconditions.checkArgument(bArr == null || bArr.length == 32, "clientDataHash must be 32 bytes long");
        this.d = bArr;
    }

    public static BrowserPublicKeyCredentialCreationOptions deserializeFromBytes(byte[] bArr) {
        return (BrowserPublicKeyCredentialCreationOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BrowserPublicKeyCredentialCreationOptions)) {
            return false;
        }
        BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions = (BrowserPublicKeyCredentialCreationOptions) obj;
        return Objects.equal(this.b, browserPublicKeyCredentialCreationOptions.b) && Objects.equal(this.c, browserPublicKeyCredentialCreationOptions.c);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.b.getAuthenticationExtensions();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] getChallenge() {
        return this.b.getChallenge();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.BrowserRequestOptions
    public byte[] getClientDataHash() {
        return this.d;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.BrowserRequestOptions
    public Uri getOrigin() {
        return this.c;
    }

    public PublicKeyCredentialCreationOptions getPublicKeyCredentialCreationOptions() {
        return this.b;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Integer getRequestId() {
        return this.b.getRequestId();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Double getTimeoutSeconds() {
        return this.b.getTimeoutSeconds();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public TokenBinding getTokenBinding() {
        return this.b.getTokenBinding();
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getPublicKeyCredentialCreationOptions(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getOrigin(), i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, getClientDataHash(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
