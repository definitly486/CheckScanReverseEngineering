package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class t95 implements Parcelable {
    public static final r95 CREATOR = new r95();
    public final boolean b;
    public final r00 c;
    public final aj5 d;

    public t95(Parcel parcel) {
        boolean z = parcel.readByte() != 0;
        r00 r00Var = (r00) parcel.readParcelable(r00.class.getClassLoader());
        aj5 aj5Var = (aj5) parcel.readParcelable(aj5.class.getClassLoader());
        this.b = z;
        this.c = r00Var;
        this.d = aj5Var;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t95)) {
            return false;
        }
        t95 t95Var = (t95) obj;
        return this.b == t95Var.b && defpackage.aa4.e(this.c, t95Var.c) && defpackage.aa4.e(this.d, t95Var.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.b) * 31;
        r00 r00Var = this.c;
        int iHashCode2 = (iHashCode + (r00Var == null ? 0 : r00Var.hashCode())) * 31;
        aj5 aj5Var = this.d;
        return iHashCode2 + (aj5Var != null ? aj5Var.b.hashCode() : 0);
    }

    public final String toString() {
        return "RewardData(serverSideRewardType=" + this.b + ", clientSideReward=" + this.c + ", serverSideReward=" + this.d + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
    }

    public t95(boolean z, r00 r00Var, aj5 aj5Var) {
        this.b = z;
        this.c = r00Var;
        this.d = aj5Var;
    }
}
