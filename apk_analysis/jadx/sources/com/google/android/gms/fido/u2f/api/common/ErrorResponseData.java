package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzaj;
import com.google.android.gms.internal.fido.zzak;
import defpackage.ti0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ErrorResponseData extends ResponseData {
    public static final Parcelable.Creator<ErrorResponseData> CREATOR = new zzd();
    public static final String JSON_ERROR_CODE = "errorCode";
    public static final String JSON_ERROR_MESSAGE = "errorMessage";
    public final ErrorCode b;
    public final String c;

    public ErrorResponseData(ErrorCode errorCode) {
        this.b = (ErrorCode) Preconditions.checkNotNull(errorCode);
        this.c = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ErrorResponseData)) {
            return false;
        }
        ErrorResponseData errorResponseData = (ErrorResponseData) obj;
        return Objects.equal(this.b, errorResponseData.b) && Objects.equal(this.c, errorResponseData.c);
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
        return Objects.hashCode(this.b, this.c);
    }

    @Override // com.google.android.gms.fido.u2f.api.common.ResponseData
    public final JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", this.b.getCode());
            String str = this.c;
            if (str != null) {
                jSONObject.put("errorMessage", str);
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String toString() {
        zzaj zzajVarZza = zzak.zza(this);
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
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public ErrorResponseData(int i, String str) {
        this.b = ErrorCode.toErrorCode(i);
        this.c = str;
    }

    public ErrorResponseData(ErrorCode errorCode, String str) {
        this.b = (ErrorCode) Preconditions.checkNotNull(errorCode);
        this.c = str;
    }
}
