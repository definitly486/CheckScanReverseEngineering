package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import defpackage.cg;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredentialRequestOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialRequestOptions> CREATOR = new zzao();
    public final byte[] b;
    public final Double c;
    public final String d;
    public final List e;
    public final Integer f;
    public final TokenBinding g;
    public final zzay h;
    public final AuthenticationExtensions i;
    public final Long j;

    public PublicKeyCredentialRequestOptions(byte[] bArr, Double d, String str, List list, Integer num, TokenBinding tokenBinding, String str2, AuthenticationExtensions authenticationExtensions, Long l) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = d;
        this.d = (String) Preconditions.checkNotNull(str);
        this.e = list;
        this.f = num;
        this.g = tokenBinding;
        this.j = l;
        if (str2 != null) {
            try {
                this.h = zzay.zza(str2);
            } catch (zzax e) {
                cg.h(e);
                throw null;
            }
        } else {
            this.h = null;
        }
        this.i = authenticationExtensions;
    }

    public static PublicKeyCredentialRequestOptions deserializeFromBytes(byte[] bArr) {
        return (PublicKeyCredentialRequestOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialRequestOptions)) {
            return false;
        }
        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) obj;
        List list2 = publicKeyCredentialRequestOptions.e;
        return Arrays.equals(this.b, publicKeyCredentialRequestOptions.b) && Objects.equal(this.c, publicKeyCredentialRequestOptions.c) && Objects.equal(this.d, publicKeyCredentialRequestOptions.d) && (((list = this.e) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && Objects.equal(this.f, publicKeyCredentialRequestOptions.f) && Objects.equal(this.g, publicKeyCredentialRequestOptions.g) && Objects.equal(this.h, publicKeyCredentialRequestOptions.h) && Objects.equal(this.i, publicKeyCredentialRequestOptions.i) && Objects.equal(this.j, publicKeyCredentialRequestOptions.j);
    }

    public List<PublicKeyCredentialDescriptor> getAllowList() {
        return this.e;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.i;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] getChallenge() {
        return this.b;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Integer getRequestId() {
        return this.f;
    }

    public String getRpId() {
        return this.d;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Double getTimeoutSeconds() {
        return this.c;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public TokenBinding getTokenBinding() {
        return this.g;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeString(parcel, 4, getRpId(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getAllowList(), false);
        SafeParcelWriter.writeIntegerObject(parcel, 6, getRequestId(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getTokenBinding(), i, false);
        zzay zzayVar = this.h;
        SafeParcelWriter.writeString(parcel, 8, zzayVar == null ? null : zzayVar.toString(), false);
        SafeParcelWriter.writeParcelable(parcel, 9, getAuthenticationExtensions(), i, false);
        SafeParcelWriter.writeLongObject(parcel, 10, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzay zza() {
        return this.h;
    }

    public static final class Builder {
        public byte[] a;
        public Double b;
        public String c;
        public List d;
        public Integer e;
        public TokenBinding f;
        public final zzay g;
        public AuthenticationExtensions h;

        public Builder(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
            if (publicKeyCredentialRequestOptions != null) {
                this.a = publicKeyCredentialRequestOptions.getChallenge();
                this.b = publicKeyCredentialRequestOptions.getTimeoutSeconds();
                this.c = publicKeyCredentialRequestOptions.getRpId();
                this.d = publicKeyCredentialRequestOptions.getAllowList();
                this.e = publicKeyCredentialRequestOptions.getRequestId();
                this.f = publicKeyCredentialRequestOptions.getTokenBinding();
                this.g = publicKeyCredentialRequestOptions.zza();
                this.h = publicKeyCredentialRequestOptions.getAuthenticationExtensions();
            }
        }

        public PublicKeyCredentialRequestOptions build() {
            byte[] bArr = this.a;
            Double d = this.b;
            String str = this.c;
            List list = this.d;
            Integer num = this.e;
            TokenBinding tokenBinding = this.f;
            zzay zzayVar = this.g;
            return new PublicKeyCredentialRequestOptions(bArr, d, str, list, num, tokenBinding, zzayVar == null ? null : zzayVar.toString(), this.h, null);
        }

        public Builder setAllowList(List<PublicKeyCredentialDescriptor> list) {
            this.d = list;
            return this;
        }

        public Builder setAuthenticationExtensions(AuthenticationExtensions authenticationExtensions) {
            this.h = authenticationExtensions;
            return this;
        }

        public Builder setChallenge(byte[] bArr) {
            this.a = (byte[]) Preconditions.checkNotNull(bArr);
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.e = num;
            return this;
        }

        public Builder setRpId(String str) {
            this.c = (String) Preconditions.checkNotNull(str);
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.b = d;
            return this;
        }

        public Builder setTokenBinding(TokenBinding tokenBinding) {
            this.f = tokenBinding;
            return this;
        }

        public Builder() {
        }
    }
}
