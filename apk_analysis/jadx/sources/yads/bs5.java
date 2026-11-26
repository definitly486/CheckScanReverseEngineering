package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class bs5 implements Comparable, Parcelable {
    public static final Parcelable.Creator<bs5> CREATOR = new as5();
    public final int b;
    public final int c;
    public final int d;

    public bs5(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        bs5 bs5Var = (bs5) obj;
        int i = this.b - bs5Var.b;
        return (i == 0 && (i = this.c - bs5Var.c) == 0) ? this.d - bs5Var.d : i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bs5.class == obj.getClass()) {
            bs5 bs5Var = (bs5) obj;
            if (this.b == bs5Var.b && this.c == bs5Var.c && this.d == bs5Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.b * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return this.b + "." + this.c + "." + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }

    public bs5(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }
}
