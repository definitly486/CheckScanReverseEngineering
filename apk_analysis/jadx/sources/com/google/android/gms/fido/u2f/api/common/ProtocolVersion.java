package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.me0;
import defpackage.ti0;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public enum ProtocolVersion implements Parcelable {
    UNKNOWN("UNKNOWN"),
    V1("U2F_V1"),
    V2("U2F_V2");

    public static final Parcelable.Creator<ProtocolVersion> CREATOR = new b();
    private final String zzb;

    public static class UnsupportedProtocolException extends Exception {
        public UnsupportedProtocolException(String str) {
            super(me0.c("Protocol version ", str, " not supported"));
        }
    }

    ProtocolVersion(String str) {
        this.zzb = str;
    }

    public static ProtocolVersion fromBytes(byte[] bArr) {
        try {
            return fromString(new String(bArr, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            ti0.f(e);
            return null;
        }
    }

    public static ProtocolVersion fromString(String str) throws UnsupportedProtocolException {
        if (str == null) {
            return UNKNOWN;
        }
        for (ProtocolVersion protocolVersion : values()) {
            if (str.equals(protocolVersion.zzb)) {
                return protocolVersion;
            }
        }
        throw new UnsupportedProtocolException(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isCompatible(ProtocolVersion protocolVersion) {
        ProtocolVersion protocolVersion2 = UNKNOWN;
        if (equals(protocolVersion2) || protocolVersion.equals(protocolVersion2)) {
            return true;
        }
        return equals(protocolVersion);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzb);
    }
}
