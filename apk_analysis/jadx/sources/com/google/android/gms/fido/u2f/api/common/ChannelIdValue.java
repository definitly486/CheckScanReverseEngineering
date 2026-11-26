package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cg;
import defpackage.kv2;
import defpackage.ti0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ChannelIdValue extends AbstractSafeParcelable {
    public final ChannelIdValueType b;
    public final String c;
    public final String d;
    public static final Parcelable.Creator<ChannelIdValue> CREATOR = new zzb();
    public static final ChannelIdValue ABSENT = new ChannelIdValue();
    public static final ChannelIdValue UNAVAILABLE = new ChannelIdValue("unavailable");
    public static final ChannelIdValue UNUSED = new ChannelIdValue("unused");

    public enum ChannelIdValueType implements Parcelable {
        ABSENT(0),
        STRING(1),
        OBJECT(2);

        public static final Parcelable.Creator<ChannelIdValueType> CREATOR = new a();
        private final int zzb;

        ChannelIdValueType(int i) {
            this.zzb = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.zzb);
        }
    }

    public static class UnsupportedChannelIdValueTypeException extends Exception {
        public UnsupportedChannelIdValueTypeException(int i) {
            super(kv2.b(i, "ChannelIdValueType ", " not supported"));
        }
    }

    public ChannelIdValue(JSONObject jSONObject) {
        this.d = (String) Preconditions.checkNotNull(jSONObject.toString());
        this.b = ChannelIdValueType.OBJECT;
        this.c = null;
    }

    public static ChannelIdValueType toChannelIdValueType(int i) throws UnsupportedChannelIdValueTypeException {
        for (ChannelIdValueType channelIdValueType : ChannelIdValueType.values()) {
            if (i == channelIdValueType.zzb) {
                return channelIdValueType;
            }
        }
        throw new UnsupportedChannelIdValueTypeException(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChannelIdValue)) {
            return false;
        }
        ChannelIdValue channelIdValue = (ChannelIdValue) obj;
        ChannelIdValueType channelIdValueType = channelIdValue.b;
        ChannelIdValueType channelIdValueType2 = this.b;
        if (!channelIdValueType2.equals(channelIdValueType)) {
            return false;
        }
        int iOrdinal = channelIdValueType2.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal == 1) {
            return this.c.equals(channelIdValue.c);
        }
        if (iOrdinal != 2) {
            return false;
        }
        return this.d.equals(channelIdValue.d);
    }

    public JSONObject getObjectValue() {
        String str = this.d;
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String getObjectValueAsString() {
        return this.d;
    }

    public String getStringValue() {
        return this.c;
    }

    public ChannelIdValueType getType() {
        return this.b;
    }

    public int getTypeAsInt() {
        return this.b.zzb;
    }

    public int hashCode() {
        int i;
        int iHashCode;
        ChannelIdValueType channelIdValueType = this.b;
        int iHashCode2 = channelIdValueType.hashCode() + 31;
        int iOrdinal = channelIdValueType.ordinal();
        if (iOrdinal == 1) {
            i = iHashCode2 * 31;
            iHashCode = this.c.hashCode();
        } else {
            if (iOrdinal != 2) {
                return iHashCode2;
            }
            i = iHashCode2 * 31;
            iHashCode = this.d.hashCode();
        }
        return iHashCode + i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getTypeAsInt());
        SafeParcelWriter.writeString(parcel, 3, getStringValue(), false);
        SafeParcelWriter.writeString(parcel, 4, getObjectValueAsString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public ChannelIdValue(int i, String str, String str2) {
        try {
            this.b = toChannelIdValueType(i);
            this.c = str;
            this.d = str2;
        } catch (UnsupportedChannelIdValueTypeException e) {
            cg.h(e);
            throw null;
        }
    }

    public ChannelIdValue(String str) {
        this.c = (String) Preconditions.checkNotNull(str);
        this.b = ChannelIdValueType.STRING;
        this.d = null;
    }

    public ChannelIdValue() {
        this.b = ChannelIdValueType.ABSENT;
        this.d = null;
        this.c = null;
    }
}
