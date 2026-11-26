package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class ux3 implements g84 {
    public static final Parcelable.Creator<ux3> CREATOR = new tx3();
    public final String b;
    public final byte[] c;
    public final int d;
    public final int e;

    public ux3(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        this.b = string;
        this.c = parcel.createByteArray();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ux3.class == obj.getClass()) {
            ux3 ux3Var = (ux3) obj;
            if (this.b.equals(ux3Var.b) && Arrays.equals(this.c, ux3Var.c) && this.d == ux3Var.d && this.e == ux3Var.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.c) + l4.a(527, 31, this.b)) * 31) + this.d) * 31) + this.e;
    }

    public final String toString() {
        return "mdta: key=" + this.b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
    }

    public ux3(int i, int i2, String str, byte[] bArr) {
        this.b = str;
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }
}
