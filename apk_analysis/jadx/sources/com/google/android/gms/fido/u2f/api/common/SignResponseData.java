package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzaj;
import com.google.android.gms.internal.fido.zzak;
import com.google.android.gms.internal.fido.zzbf;
import defpackage.ti0;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class SignResponseData extends ResponseData {
    public static final Parcelable.Creator<SignResponseData> CREATOR = new zzl();
    public static final String JSON_RESPONSE_DATA_CLIENT_DATA = "clientData";
    public static final String JSON_RESPONSE_DATA_KEY_HANDLE = "keyHandle";
    public static final String JSON_RESPONSE_DATA_SIGNATURE_DATA = "signatureData";
    public final byte[] b;
    public final String c;
    public final byte[] d;
    public final byte[] e;

    public SignResponseData(byte[] bArr, String str, byte[] bArr2, byte[] bArr3) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = (String) Preconditions.checkNotNull(str);
        this.d = (byte[]) Preconditions.checkNotNull(bArr2);
        this.e = (byte[]) Preconditions.checkNotNull(bArr3);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignResponseData)) {
            return false;
        }
        SignResponseData signResponseData = (SignResponseData) obj;
        return Arrays.equals(this.b, signResponseData.b) && Objects.equal(this.c, signResponseData.c) && Arrays.equals(this.d, signResponseData.d) && Arrays.equals(this.e, signResponseData.e);
    }

    public String getClientDataString() {
        return this.c;
    }

    public byte[] getKeyHandle() {
        return this.b;
    }

    public byte[] getSignatureData() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), this.c, Integer.valueOf(Arrays.hashCode(this.d)), Integer.valueOf(Arrays.hashCode(this.e)));
    }

    @Override // com.google.android.gms.fido.u2f.api.common.ResponseData
    public JSONObject toJsonObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(JSON_RESPONSE_DATA_KEY_HANDLE, Base64.encodeToString(this.b, 11));
            jSONObject.put(JSON_RESPONSE_DATA_CLIENT_DATA, Base64.encodeToString(this.c.getBytes(), 11));
            jSONObject.put(JSON_RESPONSE_DATA_SIGNATURE_DATA, Base64.encodeToString(this.d, 11));
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String toString() {
        zzaj zzajVarZza = zzak.zza(this);
        zzbf zzbfVarZzd = zzbf.zzd();
        byte[] bArr = this.b;
        zzajVarZza.zzb(JSON_RESPONSE_DATA_KEY_HANDLE, zzbfVarZzd.zze(bArr, 0, bArr.length));
        zzajVarZza.zzb("clientDataString", this.c);
        zzbf zzbfVarZzd2 = zzbf.zzd();
        byte[] bArr2 = this.d;
        zzajVarZza.zzb(JSON_RESPONSE_DATA_SIGNATURE_DATA, zzbfVarZzd2.zze(bArr2, 0, bArr2.length));
        zzbf zzbfVarZzd3 = zzbf.zzd();
        byte[] bArr3 = this.e;
        zzajVarZza.zzb(MimeTypes.BASE_TYPE_APPLICATION, zzbfVarZzd3.zze(bArr3, 0, bArr3.length));
        return zzajVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeString(parcel, 3, getClientDataString(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getSignatureData(), false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.e, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Deprecated
    public SignResponseData(byte[] bArr, String str, byte[] bArr2) {
        this(bArr, str, bArr2, new byte[0]);
    }
}
