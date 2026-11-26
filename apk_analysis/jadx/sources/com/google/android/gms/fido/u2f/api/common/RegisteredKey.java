package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.ti0;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class RegisteredKey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisteredKey> CREATOR = new zzj();
    public final KeyHandle b;
    public final String c;
    public final String d;

    public RegisteredKey(KeyHandle keyHandle, String str, String str2) {
        this.b = (KeyHandle) Preconditions.checkNotNull(keyHandle);
        this.d = str;
        this.c = str2;
    }

    public static RegisteredKey parseFromJson(JSONObject jSONObject) {
        return new RegisteredKey(KeyHandle.parseFromJson(jSONObject), jSONObject.has(ClientData.KEY_CHALLENGE) ? jSONObject.getString(ClientData.KEY_CHALLENGE) : null, jSONObject.has(RemoteConfigConstants.RequestFieldKey.APP_ID) ? jSONObject.getString(RemoteConfigConstants.RequestFieldKey.APP_ID) : null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisteredKey)) {
            return false;
        }
        RegisteredKey registeredKey = (RegisteredKey) obj;
        String str = registeredKey.d;
        String str2 = this.d;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!this.b.equals(registeredKey.b)) {
            return false;
        }
        String str3 = registeredKey.c;
        String str4 = this.c;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        return true;
    }

    public String getAppId() {
        return this.c;
    }

    public String getChallengeValue() {
        return this.d;
    }

    public KeyHandle getKeyHandle() {
        return this.b;
    }

    public int hashCode() {
        String str = this.d;
        int iHashCode = this.b.hashCode() + (((str == null ? 0 : str.hashCode()) + 31) * 31);
        String str2 = this.c;
        return (iHashCode * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.d;
            if (str != null) {
                jSONObject.put(ClientData.KEY_CHALLENGE, str);
            }
            JSONObject jSONObjectZza = this.b.zza();
            Iterator<String> itKeys = jSONObjectZza.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.put(next, jSONObjectZza.get(next));
            }
            String str2 = this.c;
            if (str2 != null) {
                jSONObject.put(RemoteConfigConstants.RequestFieldKey.APP_ID, str2);
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String toString() {
        KeyHandle keyHandle = this.b;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE, Base64.encodeToString(keyHandle.getBytes(), 11));
            if (keyHandle.getProtocolVersion() != ProtocolVersion.UNKNOWN) {
                jSONObject.put("version", keyHandle.getProtocolVersion().toString());
            }
            if (keyHandle.getTransports() != null) {
                jSONObject.put("transports", keyHandle.getTransports().toString());
            }
            String str = this.d;
            if (str != null) {
                jSONObject.put(ClientData.KEY_CHALLENGE, str);
            }
            String str2 = this.c;
            if (str2 != null) {
                jSONObject.put(RemoteConfigConstants.RequestFieldKey.APP_ID, str2);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getKeyHandle(), i, false);
        SafeParcelWriter.writeString(parcel, 3, getChallengeValue(), false);
        SafeParcelWriter.writeString(parcel, 4, getAppId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public RegisteredKey(KeyHandle keyHandle) {
        this(keyHandle, null, null);
    }
}
