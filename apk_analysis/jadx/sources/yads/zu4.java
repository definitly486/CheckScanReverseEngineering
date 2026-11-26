package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class zu4 implements g84 {
    public static final Parcelable.Creator<zu4> CREATOR = new yu4();
    public final int b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final byte[] i;

    public zu4(Parcel parcel) {
        this.b = parcel.readInt();
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = parcel.createByteArray();
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        byte[] bArr = this.i;
        int i = this.b;
        if (s04Var.j != null) {
            Integer numValueOf = Integer.valueOf(i);
            int i2 = u56.a;
            if (!numValueOf.equals(3) && u56.a((Object) s04Var.k, (Object) 3)) {
                return;
            }
        }
        s04Var.j = (byte[]) bArr.clone();
        s04Var.k = Integer.valueOf(i);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zu4.class == obj.getClass()) {
            zu4 zu4Var = (zu4) obj;
            if (this.b == zu4Var.b && this.c.equals(zu4Var.c) && this.d.equals(zu4Var.d) && this.e == zu4Var.e && this.f == zu4Var.f && this.g == zu4Var.g && this.h == zu4Var.h && Arrays.equals(this.i, zu4Var.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.i) + ((((((((l4.a(l4.a((this.b + 527) * 31, 31, this.c), 31, this.d) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeByteArray(this.i);
    }

    public zu4(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = bArr;
    }
}
