package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class jb3 implements g84 {
    public static final Parcelable.Creator<jb3> CREATOR = new ib3();
    public final byte[] b;
    public final String c;
    public final String d;

    public jb3(Parcel parcel) {
        byte[] bArrCreateByteArray = parcel.createByteArray();
        bArrCreateByteArray.getClass();
        this.b = bArrCreateByteArray;
        this.c = parcel.readString();
        this.d = parcel.readString();
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        String str = this.c;
        if (str != null) {
            s04Var.a = str;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jb3.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((jb3) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        String str = this.c;
        String str2 = this.d;
        return defpackage.l2.e(defpackage.ad2.d("ICY: title=\"", str, "\", url=\"", str2, "\", rawMetadata.length=\""), "\"", this.b.length);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public jb3(byte[] bArr, String str, String str2) {
        this.b = bArr;
        this.c = str;
        this.d = str2;
    }
}
