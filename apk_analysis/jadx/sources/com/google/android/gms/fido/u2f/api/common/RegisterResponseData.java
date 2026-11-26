package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzaj;
import com.google.android.gms.internal.fido.zzak;
import com.google.android.gms.internal.fido.zzbf;
import defpackage.cg;
import defpackage.ti0;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class RegisterResponseData extends ResponseData {
    public static final Parcelable.Creator<RegisterResponseData> CREATOR = new zzi();
    public final byte[] b;
    public final ProtocolVersion c;
    public final String d;

    public RegisterResponseData(byte[] bArr, ProtocolVersion protocolVersion, String str) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = (ProtocolVersion) Preconditions.checkNotNull(protocolVersion);
        Preconditions.checkArgument(protocolVersion != ProtocolVersion.UNKNOWN);
        if (protocolVersion != ProtocolVersion.V1) {
            this.d = (String) Preconditions.checkNotNull(str);
        } else {
            Preconditions.checkArgument(str == null);
            this.d = null;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RegisterResponseData)) {
            return false;
        }
        RegisterResponseData registerResponseData = (RegisterResponseData) obj;
        return Objects.equal(this.c, registerResponseData.c) && Arrays.equals(this.b, registerResponseData.b) && Objects.equal(this.d, registerResponseData.d);
    }

    public String getClientDataString() {
        return this.d;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.c;
    }

    public byte[] getRegisterData() {
        return this.b;
    }

    public int getVersionCode() {
        int iOrdinal = this.c.ordinal();
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                return -1;
            }
        }
        return i;
    }

    public int hashCode() {
        return Objects.hashCode(this.c, Integer.valueOf(Arrays.hashCode(this.b)), this.d);
    }

    @Override // com.google.android.gms.fido.u2f.api.common.ResponseData
    public JSONObject toJsonObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("registrationData", Base64.encodeToString(this.b, 11));
            jSONObject.put("version", this.c.toString());
            String str = this.d;
            if (str != null) {
                jSONObject.put(SignResponseData.JSON_RESPONSE_DATA_CLIENT_DATA, Base64.encodeToString(str.getBytes(), 11));
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String toString() {
        zzaj zzajVarZza = zzak.zza(this);
        zzajVarZza.zzb("protocolVersion", this.c);
        zzbf zzbfVarZzd = zzbf.zzd();
        byte[] bArr = this.b;
        zzajVarZza.zzb("registerData", zzbfVarZzd.zze(bArr, 0, bArr.length));
        String str = this.d;
        if (str != null) {
            zzajVarZza.zzb("clientDataString", str);
        }
        return zzajVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getRegisterData(), false);
        SafeParcelWriter.writeString(parcel, 3, this.c.toString(), false);
        SafeParcelWriter.writeString(parcel, 4, getClientDataString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public RegisterResponseData(byte[] bArr) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = ProtocolVersion.V1;
        this.d = null;
    }

    public RegisterResponseData(byte[] bArr, String str, String str2) {
        this.b = bArr;
        try {
            this.c = ProtocolVersion.fromString(str);
            this.d = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            cg.h(e);
            throw null;
        }
    }
}
