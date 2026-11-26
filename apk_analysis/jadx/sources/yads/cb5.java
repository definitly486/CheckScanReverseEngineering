package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class cb5 implements Parcelable {
    public static final bb5 CREATOR = new bb5();
    public final k54 b;
    public final ab5 c;

    public cb5(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        k54 k54VarValueOf = k54.valueOf(string);
        Parcelable parcelable = parcel.readParcelable(ab5.class.getClassLoader());
        parcelable.getClass();
        this.b = k54VarValueOf;
        this.c = (ab5) parcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cb5)) {
            return false;
        }
        cb5 cb5Var = (cb5) obj;
        return this.b == cb5Var.b && defpackage.aa4.e(this.c, cb5Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "RewardedMediationParameters(bridgeAdType=" + this.b + ", configuration=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b.name());
        parcel.writeParcelable(this.c, i);
    }

    public cb5(k54 k54Var, ab5 ab5Var) {
        this.b = k54Var;
        this.c = ab5Var;
    }
}
