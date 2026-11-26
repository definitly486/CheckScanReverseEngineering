package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class ep2 implements g84 {
    public static final Parcelable.Creator<ep2> CREATOR;
    public static final vz2 h;
    public static final vz2 i;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final byte[] f;
    public int g;

    static {
        uz2 uz2Var = new uz2();
        uz2Var.k = MimeTypes.APPLICATION_ID3;
        h = new vz2(uz2Var);
        uz2 uz2Var2 = new uz2();
        uz2Var2.k = MimeTypes.APPLICATION_SCTE35;
        i = new vz2(uz2Var2);
        CREATOR = new dp2();
    }

    public ep2(Parcel parcel) {
        String string = parcel.readString();
        int i2 = u56.a;
        this.b = string;
        this.c = parcel.readString();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        this.f = parcel.createByteArray();
    }

    @Override // yads.g84
    public final vz2 a() {
        String str = this.b;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return i;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return h;
            default:
                return null;
        }
    }

    @Override // yads.g84
    public final byte[] b() {
        if (a() != null) {
            return this.f;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ep2.class == obj.getClass()) {
            ep2 ep2Var = (ep2) obj;
            if (this.d == ep2Var.d && this.e == ep2Var.e && u56.a(this.b, ep2Var.b) && u56.a(this.c, ep2Var.c) && Arrays.equals(this.f, ep2Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.g;
        if (i2 != 0) {
            return i2;
        }
        String str = this.b;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        long j = this.d;
        int i3 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.e;
        int iHashCode3 = Arrays.hashCode(this.f) + ((i3 + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        this.g = iHashCode3;
        return iHashCode3;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.b + ", id=" + this.e + ", durationMs=" + this.d + ", value=" + this.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeByteArray(this.f);
    }

    public ep2(String str, String str2, long j, long j2, byte[] bArr) {
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = bArr;
    }
}
