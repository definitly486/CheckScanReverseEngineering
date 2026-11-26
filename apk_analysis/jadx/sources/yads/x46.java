package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class x46 extends nb3 {
    public static final Parcelable.Creator<x46> CREATOR = new w46();
    public final String c;
    public final String d;

    /* JADX WARN: Illegal instructions before constructor call */
    public x46(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        super(string);
        this.c = parcel.readString();
        this.d = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && x46.class == obj.getClass()) {
            x46 x46Var = (x46) obj;
            if (this.b.equals(x46Var.b) && u56.a(this.c, x46Var.c) && u56.a(this.d, x46Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iA = l4.a(527, 31, this.b);
        String str = this.c;
        int iHashCode = (iA + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": url=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public x46(String str, String str2, String str3) {
        super(str);
        this.c = str2;
        this.d = str3;
    }
}
