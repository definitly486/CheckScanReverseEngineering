package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class pl2 implements Parcelable {
    public static final Parcelable.Creator<pl2> CREATOR = new ol2();
    public int b;
    public final UUID c;
    public final String d;
    public final String e;
    public final byte[] f;

    public pl2(Parcel parcel) {
        this.c = new UUID(parcel.readLong(), parcel.readLong());
        this.d = parcel.readString();
        String string = parcel.readString();
        int i = u56.a;
        this.e = string;
        this.f = parcel.createByteArray();
    }

    public final boolean a(UUID uuid) {
        return uv.a.equals(this.c) || uuid.equals(this.c);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof pl2)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        pl2 pl2Var = (pl2) obj;
        return u56.a(this.d, pl2Var.d) && u56.a(this.e, pl2Var.e) && u56.a(this.c, pl2Var.c) && Arrays.equals(this.f, pl2Var.f);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode() * 31;
        String str = this.d;
        int iHashCode2 = Arrays.hashCode(this.f) + l4.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.e);
        this.b = iHashCode2;
        return iHashCode2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.c.getMostSignificantBits());
        parcel.writeLong(this.c.getLeastSignificantBits());
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByteArray(this.f);
    }

    public pl2(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.c = uuid;
        this.d = str;
        str2.getClass();
        this.e = str2;
        this.f = bArr;
    }
}
