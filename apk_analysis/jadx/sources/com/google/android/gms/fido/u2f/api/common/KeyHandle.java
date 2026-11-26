package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import defpackage.cg;
import defpackage.me0;
import defpackage.ti0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class KeyHandle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<KeyHandle> CREATOR = new zze();
    public final int b;
    public final byte[] c;
    public final ProtocolVersion d;
    public final List e;

    public KeyHandle(int i, String str, ArrayList arrayList, byte[] bArr) {
        this.b = i;
        this.c = bArr;
        try {
            this.d = ProtocolVersion.fromString(str);
            this.e = arrayList;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            cg.h(e);
            throw null;
        }
    }

    public static KeyHandle parseFromJson(JSONObject jSONObject) throws JSONException {
        try {
            try {
                return new KeyHandle(Base64.decode(jSONObject.getString(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE), 8), ProtocolVersion.fromString(jSONObject.has("version") ? jSONObject.getString("version") : null), jSONObject.has("transports") ? Transport.parseTransports(jSONObject.getJSONArray("transports")) : null);
            } catch (IllegalArgumentException e) {
                throw new JSONException(e.toString());
            }
        } catch (ProtocolVersion.UnsupportedProtocolException e2) {
            throw new JSONException(e2.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyHandle)) {
            return false;
        }
        KeyHandle keyHandle = (KeyHandle) obj;
        List list = keyHandle.e;
        if (!Arrays.equals(this.c, keyHandle.c) || !this.d.equals(keyHandle.d)) {
            return false;
        }
        List list2 = this.e;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public byte[] getBytes() {
        return this.c;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.d;
    }

    public List<Transport> getTransports() {
        return this.e;
    }

    public int getVersionCode() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.c)), this.d, this.e);
    }

    public JSONObject toJson() {
        return zza();
    }

    public String toString() {
        List list = this.e;
        String string = list == null ? "null" : list.toString();
        String strEncode = Base64Utils.encode(this.c);
        StringBuilder sb = new StringBuilder("{keyHandle: ");
        sb.append(strEncode);
        sb.append(", version: ");
        sb.append(this.d);
        sb.append(", transports: ");
        return me0.d(sb, string, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
        SafeParcelWriter.writeByteArray(parcel, 2, getBytes(), false);
        SafeParcelWriter.writeString(parcel, 3, this.d.toString(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte[] bArr = this.c;
            if (bArr != null) {
                jSONObject.put(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE, Base64.encodeToString(bArr, 11));
            }
            ProtocolVersion protocolVersion = this.d;
            if (protocolVersion != null) {
                jSONObject.put("version", protocolVersion.toString());
            }
            List list = this.e;
            if (list != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((Transport) it.next()).toString());
                }
                jSONObject.put("transports", jSONArray);
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public KeyHandle(byte[] bArr, ProtocolVersion protocolVersion, List<Transport> list) {
        this.b = 1;
        this.c = bArr;
        this.d = protocolVersion;
        this.e = list;
    }
}
