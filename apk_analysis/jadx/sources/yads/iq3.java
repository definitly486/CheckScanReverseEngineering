package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class iq3 implements Parcelable {
    public static final hq3 CREATOR = new hq3();
    public final String b;
    public final String c;
    public final boolean d;

    public iq3(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        String string2 = parcel.readString();
        string2.getClass();
        boolean z = parcel.readByte() != 0;
        this.b = string;
        this.c = string2;
        this.d = z;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iq3)) {
            return false;
        }
        iq3 iq3Var = (iq3) obj;
        return defpackage.aa4.e(this.b, iq3Var.b) && defpackage.aa4.e(this.c, iq3Var.c) && this.d == iq3Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + l4.a(this.b.hashCode() * 31, 31, this.c);
    }

    public final String toString() {
        String str = this.b;
        String str2 = this.c;
        return defpackage.dh.e(defpackage.ad2.d("JavaScriptResource(apiFramework=", str, ", url=", str2, ", browserOptional="), this.d, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
    }

    public iq3(String str, String str2, boolean z) {
        this.b = str;
        this.c = str2;
        this.d = z;
    }
}
