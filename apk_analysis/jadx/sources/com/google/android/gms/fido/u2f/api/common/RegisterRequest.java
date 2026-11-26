package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.cg;
import defpackage.ti0;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class RegisterRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisterRequest> CREATOR = new zzg();
    public static final int U2F_V1_CHALLENGE_BYTE_LENGTH = 65;
    public final int b;
    public final ProtocolVersion c;
    public final byte[] d;
    public final String e;

    public RegisterRequest(ProtocolVersion protocolVersion, byte[] bArr, String str) {
        this.b = 1;
        this.c = (ProtocolVersion) Preconditions.checkNotNull(protocolVersion);
        this.d = (byte[]) Preconditions.checkNotNull(bArr);
        if (protocolVersion == ProtocolVersion.V1) {
            Preconditions.checkArgument(bArr.length == 65, "invalid challengeValue length for V1");
        }
        this.e = str;
    }

    public static RegisterRequest parseFromJson(JSONObject jSONObject) throws JSONException {
        try {
            try {
                try {
                    return new RegisterRequest(ProtocolVersion.fromString(jSONObject.has("version") ? jSONObject.getString("version") : null), Base64.decode(jSONObject.getString(ClientData.KEY_CHALLENGE), 8), jSONObject.has(RemoteConfigConstants.RequestFieldKey.APP_ID) ? jSONObject.getString(RemoteConfigConstants.RequestFieldKey.APP_ID) : null);
                } catch (IllegalArgumentException e) {
                    throw new JSONException(e.getMessage());
                }
            } catch (IllegalArgumentException e2) {
                throw new JSONException(e2.toString());
            }
        } catch (ProtocolVersion.UnsupportedProtocolException e3) {
            throw new JSONException(e3.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequest)) {
            return false;
        }
        RegisterRequest registerRequest = (RegisterRequest) obj;
        if (!Arrays.equals(this.d, registerRequest.d) || this.c != registerRequest.c) {
            return false;
        }
        String str = registerRequest.e;
        String str2 = this.e;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return true;
    }

    public String getAppId() {
        return this.e;
    }

    public byte[] getChallengeValue() {
        return this.d;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.c;
    }

    public int getVersionCode() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = ((Arrays.hashCode(this.d) + 31) * 31) + this.c.hashCode();
        String str = this.e;
        return (iHashCode * 31) + (str == null ? 0 : str.hashCode());
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.c.toString());
            jSONObject.put(ClientData.KEY_CHALLENGE, Base64.encodeToString(this.d, 11));
            String str = this.e;
            if (str != null) {
                jSONObject.put(RemoteConfigConstants.RequestFieldKey.APP_ID, str);
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
        SafeParcelWriter.writeString(parcel, 2, this.c.toString(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getChallengeValue(), false);
        SafeParcelWriter.writeString(parcel, 4, getAppId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public RegisterRequest(String str, String str2, int i, byte[] bArr) {
        this.b = i;
        try {
            this.c = ProtocolVersion.fromString(str);
            this.d = bArr;
            this.e = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            cg.h(e);
            throw null;
        }
    }
}
