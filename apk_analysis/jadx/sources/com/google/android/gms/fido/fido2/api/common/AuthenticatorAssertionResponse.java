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
public class AuthenticatorAssertionResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAssertionResponse> CREATOR = new zzj();
    public final byte[] b;
    public final byte[] c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;

    public AuthenticatorAssertionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = (byte[]) Preconditions.checkNotNull(bArr2);
        this.d = (byte[]) Preconditions.checkNotNull(bArr3);
        this.e = (byte[]) Preconditions.checkNotNull(bArr4);
        this.f = bArr5;
    }

    public static AuthenticatorAssertionResponse deserializeFromBytes(byte[] bArr) {
        return (AuthenticatorAssertionResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAssertionResponse)) {
            return false;
        }
        AuthenticatorAssertionResponse authenticatorAssertionResponse = (AuthenticatorAssertionResponse) obj;
        return Arrays.equals(this.b, authenticatorAssertionResponse.b) && Arrays.equals(this.c, authenticatorAssertionResponse.c) && Arrays.equals(this.d, authenticatorAssertionResponse.d) && Arrays.equals(this.e, authenticatorAssertionResponse.e) && Arrays.equals(this.f, authenticatorAssertionResponse.f);
    }

    public byte[] getAuthenticatorData() {
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

    public byte[] getSignature() {
        return this.e;
    }

    public byte[] getUserHandle() {
        return this.f;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), Integer.valueOf(Arrays.hashCode(this.c)), Integer.valueOf(Arrays.hashCode(this.d)), Integer.valueOf(Arrays.hashCode(this.e)), Integer.valueOf(Arrays.hashCode(this.f)));
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
        zzajVarZza.zzb("authenticatorData", zzbfVarZzd3.zze(bArr3, 0, bArr3.length));
        zzbf zzbfVarZzd4 = zzbf.zzd();
        byte[] bArr4 = this.e;
        zzajVarZza.zzb("signature", zzbfVarZzd4.zze(bArr4, 0, bArr4.length));
        byte[] bArr5 = this.f;
        if (bArr5 != null) {
            zzajVarZza.zzb("userHandle", zzbf.zzd().zze(bArr5, 0, bArr5.length));
        }
        return zzajVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getAuthenticatorData(), false);
        SafeParcelWriter.writeByteArray(parcel, 5, getSignature(), false);
        SafeParcelWriter.writeByteArray(parcel, 6, getUserHandle(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
