package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class mt2 implements Parcelable {
    public static final lt2 CREATOR = new lt2();
    public final String b;
    public final long c;

    public mt2(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        long j = parcel.readLong();
        this.b = string;
        this.c = j;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mt2)) {
            return false;
        }
        mt2 mt2Var = (mt2) obj;
        return defpackage.aa4.e(this.b, mt2Var.b) && this.c == mt2Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "FalseClick(url=" + this.b + ", interval=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
    }

    public mt2(String str, long j) {
        this.b = str;
        this.c = j;
    }
}
