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
public class PublicKeyCredentialCreationOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialCreationOptions> CREATOR = new zzak();
    public final PublicKeyCredentialRpEntity b;
    public final PublicKeyCredentialUserEntity c;
    public final byte[] d;
    public final List e;
    public final Double f;
    public final List g;
    public final AuthenticatorSelectionCriteria h;
    public final Integer i;
    public final TokenBinding j;
    public final AttestationConveyancePreference k;
    public final AuthenticationExtensions l;

    public static final class Builder {
        public PublicKeyCredentialRpEntity a;
        public PublicKeyCredentialUserEntity b;
        public byte[] c;
        public List d;
        public Double e;
        public List f;
        public AuthenticatorSelectionCriteria g;
        public Integer h;
        public TokenBinding i;
        public AttestationConveyancePreference j;
        public AuthenticationExtensions k;

        public PublicKeyCredentialCreationOptions build() {
            PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = this.a;
            PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.b;
            byte[] bArr = this.c;
            List list = this.d;
            Double d = this.e;
            List list2 = this.f;
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.g;
            Integer num = this.h;
            TokenBinding tokenBinding = this.i;
            AttestationConveyancePreference attestationConveyancePreference = this.j;
            return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, list, d, list2, authenticatorSelectionCriteria, num, tokenBinding, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.k);
        }

        public Builder setAttestationConveyancePreference(AttestationConveyancePreference attestationConveyancePreference) {
            this.j = attestationConveyancePreference;
            return this;
        }

        public Builder setAuthenticationExtensions(AuthenticationExtensions authenticationExtensions) {
            this.k = authenticationExtensions;
            return this;
        }

        public Builder setAuthenticatorSelection(AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
            this.g = authenticatorSelectionCriteria;
            return this;
        }

        public Builder setChallenge(byte[] bArr) {
            this.c = (byte[]) Preconditions.checkNotNull(bArr);
            return this;
        }

        public Builder setExcludeList(List<PublicKeyCredentialDescriptor> list) {
            this.f = list;
            return this;
        }

        public Builder setParameters(List<PublicKeyCredentialParameters> list) {
            this.d = (List) Preconditions.checkNotNull(list);
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.h = num;
            return this;
        }

        public Builder setRp(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity) {
            this.a = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.e = d;
            return this;
        }

        public Builder setTokenBinding(TokenBinding tokenBinding) {
            this.i = tokenBinding;
            return this;
        }

        public Builder setUser(PublicKeyCredentialUserEntity publicKeyCredentialUserEntity) {
            this.b = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
            return this;
        }
    }

    public PublicKeyCredentialCreationOptions(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, byte[] bArr, List list, Double d, List list2, AuthenticatorSelectionCriteria authenticatorSelectionCriteria, Integer num, TokenBinding tokenBinding, String str, AuthenticationExtensions authenticationExtensions) {
        this.b = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
        this.c = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
        this.d = (byte[]) Preconditions.checkNotNull(bArr);
        this.e = (List) Preconditions.checkNotNull(list);
        this.f = d;
        this.g = list2;
        this.h = authenticatorSelectionCriteria;
        this.i = num;
        this.j = tokenBinding;
        if (str != null) {
            try {
                this.k = AttestationConveyancePreference.fromString(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e) {
                cg.h(e);
                throw null;
            }
        } else {
            this.k = null;
        }
        this.l = authenticationExtensions;
    }

    public static PublicKeyCredentialCreationOptions deserializeFromBytes(byte[] bArr) {
        return (PublicKeyCredentialCreationOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialCreationOptions)) {
            return false;
        }
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) obj;
        List list2 = publicKeyCredentialCreationOptions.e;
        List list3 = publicKeyCredentialCreationOptions.g;
        if (Objects.equal(this.b, publicKeyCredentialCreationOptions.b) && Objects.equal(this.c, publicKeyCredentialCreationOptions.c) && Arrays.equals(this.d, publicKeyCredentialCreationOptions.d) && Objects.equal(this.f, publicKeyCredentialCreationOptions.f)) {
            List list4 = this.e;
            if (list4.containsAll(list2) && list2.containsAll(list4) && ((((list = this.g) == null && list3 == null) || (list != null && list3 != null && list.containsAll(list3) && list3.containsAll(list))) && Objects.equal(this.h, publicKeyCredentialCreationOptions.h) && Objects.equal(this.i, publicKeyCredentialCreationOptions.i) && Objects.equal(this.j, publicKeyCredentialCreationOptions.j) && Objects.equal(this.k, publicKeyCredentialCreationOptions.k) && Objects.equal(this.l, publicKeyCredentialCreationOptions.l))) {
                return true;
            }
        }
        return false;
    }

    public AttestationConveyancePreference getAttestationConveyancePreference() {
        return this.k;
    }

    public String getAttestationConveyancePreferenceAsString() {
        AttestationConveyancePreference attestationConveyancePreference = this.k;
        if (attestationConveyancePreference == null) {
            return null;
        }
        return attestationConveyancePreference.toString();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.l;
    }

    public AuthenticatorSelectionCriteria getAuthenticatorSelection() {
        return this.h;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] getChallenge() {
        return this.d;
    }

    public List<PublicKeyCredentialDescriptor> getExcludeList() {
        return this.g;
    }

    public List<PublicKeyCredentialParameters> getParameters() {
        return this.e;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Integer getRequestId() {
        return this.i;
    }

    public PublicKeyCredentialRpEntity getRp() {
        return this.b;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Double getTimeoutSeconds() {
        return this.f;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public TokenBinding getTokenBinding() {
        return this.j;
    }

    public PublicKeyCredentialUserEntity getUser() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, Integer.valueOf(Arrays.hashCode(this.d)), this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getRp(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getUser(), i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, getChallenge(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getParameters(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 6, getTimeoutSeconds(), false);
        SafeParcelWriter.writeTypedList(parcel, 7, getExcludeList(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getAuthenticatorSelection(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 9, getRequestId(), false);
        SafeParcelWriter.writeParcelable(parcel, 10, getTokenBinding(), i, false);
        SafeParcelWriter.writeString(parcel, 11, getAttestationConveyancePreferenceAsString(), false);
        SafeParcelWriter.writeParcelable(parcel, 12, getAuthenticationExtensions(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
