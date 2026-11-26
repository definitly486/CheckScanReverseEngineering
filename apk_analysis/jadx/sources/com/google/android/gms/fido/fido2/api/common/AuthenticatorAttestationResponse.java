package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.u2f.api.common.SignResponseData;
import com.google.android.gms.internal.fido.zzbf;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorAttestationResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new zzk();
    public final byte[] b;
    public final byte[] c;
    public final byte[] d;
    public final String[] e;

    public AuthenticatorAttestationResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = (byte[]) Preconditions.checkNotNull(bArr2);
        this.d = (byte[]) Preconditions.checkNotNull(bArr3);
        this.e = (String[]) Preconditions.checkNotNull(strArr);
    }

    public static AuthenticatorAttestationResponse deserializeFromBytes(byte[] bArr) {
        return (AuthenticatorAttestationResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAttestationResponse)) {
            return false;
        }
        AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
        return Arrays.equals(this.b, authenticatorAttestationResponse.b) && Arrays.equals(this.c, authenticatorAttestationResponse.c) && Arrays.equals(this.d, authenticatorAttestationResponse.d);
    }

    public byte[] getAttestationObject() {
        return this.d;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    public byte[] getClientDataJSON() {
        return this.c;
    }

    @Deprecated
    public byte[] getKeyHandle() {
        return this.b;
    }

    public String[] getTransports() {
        return this.e;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), Integer.valueOf(Arrays.hashCode(this.c)), Integer.valueOf(Arrays.hashCode(this.d)));
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    public String toString() {
        com.google.android.gms.internal.fido.zzaj zzajVarZza = com.google.android.gms.internal.fido.zzak.zza(this);
        zzbf zzbfVarZzd = zzbf.zzd();
        byte[] bArr = this.b;
        zzajVarZza.zzb(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE, zzbfVarZzd.zze(bArr, 0, bArr.length));
        zzbf zzbfVarZzd2 = zzbf.zzd();
        byte[] bArr2 = this.c;
        zzajVarZza.zzb("clientDataJSON", zzbfVarZzd2.zze(bArr2, 0, bArr2.length));
        zzbf zzbfVarZzd3 = zzbf.zzd();
        byte[] bArr3 = this.d;
        zzajVarZza.zzb("attestationObject", zzbfVarZzd3.zze(bArr3, 0, bArr3.length));
        zzajVarZza.zzb("transports", Arrays.toString(this.e));
        return zzajVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getAttestationObject(), false);
        SafeParcelWriter.writeStringArray(parcel, 5, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
